import React from "react";
import { createBottomTabNavigator } from "@react-navigation/bottom-tabs";
import { NavigationContainer } from "@react-navigation/native";

//Screens

import HomeScreen from "./screens/HomeScreen";
import SettingScreen from "./screens/SettingScreens";
import StackScreen from "./screens/StackScreen";
import MaterialCommunityIcons from "react-native-vector-icons/MaterialCommunityIcons";

const Tab = createBottomTabNavigator();

function MyTabs() {
  return (
    <Tab.Navigator
      initialRouteName="Home"
      screenOptions={{
        tabBarActiveTintColor: "purple",
      }}
    >
      <Tab.Screen
        name="Home"
        component={HomeScreen}
        options={{
          tabBarLabel: "Feed",
          tabBarIcon: ({ color, size }) => (
            <MaterialCommunityIcons name="home" color={color} size={size} />
          ),

          headerShown: false,
        }}
      />
      <Tab.Screen
        name="Settings"
        component={SettingScreen}
        options={{
          tabBarLabel: "Feed",
          tabBarIcon: ({ color, size }) => (
            <MaterialCommunityIcons
              name="brightness-5"
              color={color}
              size={size}
            />
          ),

          headerShown: false,
        }}
      />
    </Tab.Navigator>
  );
}

export default function Navigation() {
  return (
    <NavigationContainer>
      <MyTabs />
    </NavigationContainer>
  );
}
