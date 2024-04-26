import { StatusBar } from "expo-status-bar";
import { useEffect, useState } from "react";
import { StyleSheet, Text, View } from "react-native";

export default function App() {
  const [musculos, setMusculos] = useState([]);
  useEffect(() => {
    fetchData();
  }, []);
  async function fetchData() {
    try {
      const response = await fetch("http://localhost:8080/musculos/13");
      console.log("Response status:", response.status);
      const data = await response.json();
      console.log("Data:", data);

      setMusculos(data);
    } catch (error) {
      console.error("Error fetching data:", error);
    }
  }

  return (
    <View style={styles.container}>
      <Text style={styles.text}>
        {"ssehhddddsdssdddd" + JSON.stringify(musculos)}
      </Text>
      <StatusBar style="auto" />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#416C7C",
    color: "#fff",
    alignItems: "center",
    justifyContent: "center",
  },
  text: {
    color: "#D4E4EA",
  },
});
