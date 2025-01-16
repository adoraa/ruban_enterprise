"use client"
import React from "react";
import { Chart as ChartJS, ArcElement, Tooltip, Legend } from "chart.js";
import { Pie } from "react-chartjs-2";

ChartJS.register(ArcElement, Tooltip, Legend);

export default function BestSellingProductsChart() {
  const data = {
    labels: ["Tomatoes", "Maize", "Green Pepper", "Orange"],
    datasets: [
      {
        label: "# sold",
        data: [12, 3, 5, 3],
        backgroundColor: [
          "rgba(255, 0, 0, 0.5)",
          "rgba(255, 240, 0, 0.7)",
          "rgba(0, 255, 0, 0.4)",
          "rgba(255, 127, 0, 0.7)",
        ],
        borderColor: [
          "rgba(255, 255, 255, 1)",
          "rgba(255, 255, 255, 1)",
          "rgba(255, 255, 255, 1)",
          "rgba(255, 255, 255, 1)",
        ],
        borderWidth: 1,
      },
    ],
  };

  return (
    <div className="bg-slate-700 p-8 rounded-lg">
      <h2 className="text-xl font-bold mb-4">Most Purchased Products</h2>
      <Pie data={data} />
    </div>
  );
}
