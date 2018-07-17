import React, { Component } from 'react';
import {
  View,
  Text,
  NativeModules,
  TouchableOpacity,
  StyleSheet
} from 'react-native';

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
  openScreenB = () => {
    NativeModules.NavigationBridge.push('ScreenB');
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
      </View>
    );
  }
}

export default ScreenA;
