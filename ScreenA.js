import React, { Component } from 'react';
import {
  View,
  Text,
  NativeModules,
  TouchableOpacity,
  StyleSheet,
  AlertIOS,
  NativeEventEmitter
} from 'react-native';

const eventEmitter = new NativeEventEmitter(NativeModules.EventBusBridge);

const styles = StyleSheet.create({
  main: {
    marginTop: 100,
    alignItems: 'center',
    justifyContent: 'center'
  },
  button: {
    padding: 20,
    margin: 20,
    backgroundColor: 'green'
  },
  text: {
    color: 'white',
    fontWeight: 'bold',
    fontSize: 24
  }
});

class ScreenA extends Component {
  componentDidMount() {
    eventEmitter.addListener('onLoadComplete', this.showAlert);
  }

  componentWillUnmount() {
    eventEmitter.removeListener('onLoadComplete', this.showAlert);
  }

  showAlert = () => {
    AlertIOS.alert('Screen B loaded');
  };

  openScreenB = () => {
    NativeModules.NavigationBridge.push('ScreenB');
  };

  loadScreenB = () => {
    NativeModules.EventBusBridge.sendEvent('lazyLoad', {
      screen_name: 'ScreenB'
    });
  };

  render() {
    return (
      <View style={styles.main}>
        <Text>Hi I'm A</Text>
        <TouchableOpacity onPress={this.openScreenB}>
          <View style={styles.button}>
            <Text style={styles.text}>Open screen B</Text>
          </View>
        </TouchableOpacity>
        <TouchableOpacity onPress={this.loadScreenB}>
          <View style={styles.button}>
            <Text style={styles.text}>Load screen B</Text>
          </View>
        </TouchableOpacity>
      </View>
    );
  }
}

export default ScreenA;
