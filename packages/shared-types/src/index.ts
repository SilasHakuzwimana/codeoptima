// packages/shared-types/src/index.ts
export interface AnalysisResult {
  score: number;
  issues: AnalysisIssue[];
  metrics: PerformanceMetrics;
  timestamp: number;
}

export interface AnalysisIssue {
  rule: string;
  message: string;
  severity: "critical" | "warning" | "info";
  fix: string;
  line?: number;
  column?: number;
  codeSnippet?: string;
}

export interface PerformanceMetrics {
  timeComplexity:
    | "O(1)"
    | "O(log n)"
    | "O(n)"
    | "O(n log n)"
    | "O(n²)"
    | "O(2^n)";
  memoryComplexity: string;
  estimatedTimeMs: number;
  estimatedMemoryMB: number;
  networkCalls?: number;
}

export interface SimulationConfig {
  maxMemoryMB: number;
  cpuSlowdown: number;
  networkLatencyMs: number;
  durationMs: number;
}

export interface SimulationResult {
  success: boolean;
  timeMs: number;
  memoryPeakMB: number;
  cpuAvgPercent: number;
  networkLatencyMs: number;
  memoryTimeline: number[];
  cpuTimeline: number[];
  error?: string;
}
