import React from 'react'
import { Box, Text } from '@rn-base/element'
import Animated, { useAnimatedStyle, useSharedValue, withSpring } from 'react-native-reanimated'
import { Button, StyleSheet } from 'react-native'

type AnimationProps = {}

const Animation: React.FC<AnimationProps> = () => {
    const offset = useSharedValue(0);

  const animatedStyles = useAnimatedStyle(() => {
    return {
      transform: [{ translateX: offset.value * 255 }],
    };
  });




    return (
        <Box  middle flex={1}>
            <Animated.View style={[styles.box, animatedStyles]} />
             <Button onPress={() => (offset.value = withSpring(Math.random()))} title="Move" />
        </Box>
    )
}

export default Animation

const styles = StyleSheet.create({
    box: {
        width: 100, height: 100, borderRadius: 10,
        backgroundColor: 'blue'
    }

})
