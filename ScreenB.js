import React from 'react';
import { View, Text, StyleSheet } from 'react-native';

const styles = StyleSheet.create({
  main: {
    marginTop: 100,
    alignItems: 'center',
    justifyContent: 'center'
  }
});

const ScreenB = () => {
  return (
    <View style={styles.main}>
      <Text>Hi I'm screen B</Text>
    </View>
  );
};

export default ScreenB;
