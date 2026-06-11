export type Json = string | number | boolean | null | { [key: string]: Json | undefined } | Json[];

export type Database = {
  // Allows to automatically instantiate createClient with right options
  // instead of createClient<Database, { PostgrestVersion: 'XX' }>(URL, KEY)
  __InternalSupabase: {
    PostgrestVersion: "14.5";
  };
  public: {
    Tables: {
      ai_feedback: {
        Row: {
          ai_summary: string | null;
          created_at: string;
          id: string;
          improvements: string | null;
          missing_evidence: string | null;
          professionalism_notes: string | null;
          strengths: string | null;
          submission_id: string;
        };
        Insert: {
          ai_summary?: string | null;
          created_at?: string;
          id?: string;
          improvements?: string | null;
          missing_evidence?: string | null;
          professionalism_notes?: string | null;
          strengths?: string | null;
          submission_id: string;
        };
        Update: {
          ai_summary?: string | null;
          created_at?: string;
          id?: string;
          improvements?: string | null;
          missing_evidence?: string | null;
          professionalism_notes?: string | null;
          strengths?: string | null;
          submission_id?: string;
        };
        Relationships: [
          {
            foreignKeyName: "ai_feedback_submission_id_fkey";
            columns: ["submission_id"];
            isOneToOne: false;
            referencedRelation: "submissions";
            referencedColumns: ["id"];
          },
        ];
      };
      course_categories: {
        Row: {
          created_at: string;
          description: string | null;
          display_order: number;
          id: string;
          name: string;
        };
        Insert: {
          created_at?: string;
          description?: string | null;
          display_order?: number;
          id?: string;
          name: string;
        };
        Update: {
          created_at?: string;
          description?: string | null;
          display_order?: number;
          id?: string;
          name?: string;
        };
        Relationships: [];
      };
      feedback: {
        Row: {
          created_at: string;
          feedback_text: string | null;
          id: string;
          score: number | null;
          submission_id: string;
          tutor_id: string;
        };
        Insert: {
          created_at?: string;
          feedback_text?: string | null;
          id?: string;
          score?: number | null;
          submission_id: string;
          tutor_id: string;
        };
        Update: {
          created_at?: string;
          feedback_text?: string | null;
          id?: string;
          score?: number | null;
          submission_id?: string;
          tutor_id?: string;
        };
        Relationships: [
          {
            foreignKeyName: "feedback_submission_id_fkey";
            columns: ["submission_id"];
            isOneToOne: false;
            referencedRelation: "submissions";
            referencedColumns: ["id"];
          },
        ];
      };
      notes: {
        Row: {
          created_at: string;
          id: string;
          note_content: string | null;
          scenario_id: string;
          updated_at: string;
          user_id: string;
        };
        Insert: {
          created_at?: string;
          id?: string;
          note_content?: string | null;
          scenario_id: string;
          updated_at?: string;
          user_id: string;
        };
        Update: {
          created_at?: string;
          id?: string;
          note_content?: string | null;
          scenario_id?: string;
          updated_at?: string;
          user_id?: string;
        };
        Relationships: [
          {
            foreignKeyName: "notes_scenario_id_fkey";
            columns: ["scenario_id"];
            isOneToOne: false;
            referencedRelation: "scenarios";
            referencedColumns: ["id"];
          },
        ];
      };
      profiles: {
        Row: {
          created_at: string;
          email: string | null;
          full_name: string | null;
          id: string;
        };
        Insert: {
          created_at?: string;
          email?: string | null;
          full_name?: string | null;
          id: string;
        };
        Update: {
          created_at?: string;
          email?: string | null;
          full_name?: string | null;
          id?: string;
        };
        Relationships: [];
      };
      progress: {
        Row: {
          completion_percentage: number;
          id: string;
          last_opened_at: string | null;
          scenario_id: string;
          status: Database["public"]["Enums"]["progress_status"];
          updated_at: string;
          user_id: string;
        };
        Insert: {
          completion_percentage?: number;
          id?: string;
          last_opened_at?: string | null;
          scenario_id: string;
          status?: Database["public"]["Enums"]["progress_status"];
          updated_at?: string;
          user_id: string;
        };
        Update: {
          completion_percentage?: number;
          id?: string;
          last_opened_at?: string | null;
          scenario_id?: string;
          status?: Database["public"]["Enums"]["progress_status"];
          updated_at?: string;
          user_id?: string;
        };
        Relationships: [
          {
            foreignKeyName: "progress_scenario_id_fkey";
            columns: ["scenario_id"];
            isOneToOne: false;
            referencedRelation: "scenarios";
            referencedColumns: ["id"];
          },
        ];
      };
      scenario_files: {
        Row: {
          access_role: Database["public"]["Enums"]["access_role"];
          body_md: string | null;
          created_at: string;
          display_order: number;
          exhibit_number: number | null;
          file_name: string;
          file_type: Database["public"]["Enums"]["file_type"];
          file_url: string | null;
          id: string;
          scenario_id: string;
          storage_path: string | null;
        };
        Insert: {
          access_role?: Database["public"]["Enums"]["access_role"];
          body_md?: string | null;
          created_at?: string;
          display_order?: number;
          exhibit_number?: number | null;
          file_name: string;
          file_type: Database["public"]["Enums"]["file_type"];
          file_url?: string | null;
          id?: string;
          scenario_id: string;
          storage_path?: string | null;
        };
        Update: {
          access_role?: Database["public"]["Enums"]["access_role"];
          body_md?: string | null;
          created_at?: string;
          display_order?: number;
          exhibit_number?: number | null;
          file_name?: string;
          file_type?: Database["public"]["Enums"]["file_type"];
          file_url?: string | null;
          id?: string;
          scenario_id?: string;
          storage_path?: string | null;
        };
        Relationships: [
          {
            foreignKeyName: "scenario_files_scenario_id_fkey";
            columns: ["scenario_id"];
            isOneToOne: false;
            referencedRelation: "scenarios";
            referencedColumns: ["id"];
          },
        ];
      };
      scenarios: {
        Row: {
          code: string;
          created_at: string;
          difficulty_level: string | null;
          display_order: number;
          id: string;
          learning_outcomes: string | null;
          matter_type: string | null;
          recommended_time: string | null;
          required_outputs: string | null;
          skill_id: string;
          student_role: string | null;
          task_brief: string | null;
          title: string;
        };
        Insert: {
          code: string;
          created_at?: string;
          difficulty_level?: string | null;
          display_order?: number;
          id?: string;
          learning_outcomes?: string | null;
          matter_type?: string | null;
          recommended_time?: string | null;
          required_outputs?: string | null;
          skill_id: string;
          student_role?: string | null;
          task_brief?: string | null;
          title: string;
        };
        Update: {
          code?: string;
          created_at?: string;
          difficulty_level?: string | null;
          display_order?: number;
          id?: string;
          learning_outcomes?: string | null;
          matter_type?: string | null;
          recommended_time?: string | null;
          required_outputs?: string | null;
          skill_id?: string;
          student_role?: string | null;
          task_brief?: string | null;
          title?: string;
        };
        Relationships: [
          {
            foreignKeyName: "scenarios_skill_id_fkey";
            columns: ["skill_id"];
            isOneToOne: false;
            referencedRelation: "skills";
            referencedColumns: ["id"];
          },
        ];
      };
      skills: {
        Row: {
          category_id: string;
          code: string;
          created_at: string;
          description: string | null;
          display_order: number;
          id: string;
          name: string;
        };
        Insert: {
          category_id: string;
          code: string;
          created_at?: string;
          description?: string | null;
          display_order?: number;
          id?: string;
          name: string;
        };
        Update: {
          category_id?: string;
          code?: string;
          created_at?: string;
          description?: string | null;
          display_order?: number;
          id?: string;
          name?: string;
        };
        Relationships: [
          {
            foreignKeyName: "skills_category_id_fkey";
            columns: ["category_id"];
            isOneToOne: false;
            referencedRelation: "course_categories";
            referencedColumns: ["id"];
          },
        ];
      };
      submissions: {
        Row: {
          created_at: string;
          id: string;
          scenario_id: string;
          status: Database["public"]["Enums"]["submission_status"];
          submission_text: string | null;
          submitted_at: string | null;
          updated_at: string;
          uploaded_file_url: string | null;
          user_id: string;
        };
        Insert: {
          created_at?: string;
          id?: string;
          scenario_id: string;
          status?: Database["public"]["Enums"]["submission_status"];
          submission_text?: string | null;
          submitted_at?: string | null;
          updated_at?: string;
          uploaded_file_url?: string | null;
          user_id: string;
        };
        Update: {
          created_at?: string;
          id?: string;
          scenario_id?: string;
          status?: Database["public"]["Enums"]["submission_status"];
          submission_text?: string | null;
          submitted_at?: string | null;
          updated_at?: string;
          uploaded_file_url?: string | null;
          user_id?: string;
        };
        Relationships: [
          {
            foreignKeyName: "submissions_scenario_id_fkey";
            columns: ["scenario_id"];
            isOneToOne: false;
            referencedRelation: "scenarios";
            referencedColumns: ["id"];
          },
        ];
      };
      user_roles: {
        Row: {
          created_at: string;
          id: string;
          role: Database["public"]["Enums"]["app_role"];
          user_id: string;
        };
        Insert: {
          created_at?: string;
          id?: string;
          role: Database["public"]["Enums"]["app_role"];
          user_id: string;
        };
        Update: {
          created_at?: string;
          id?: string;
          role?: Database["public"]["Enums"]["app_role"];
          user_id?: string;
        };
        Relationships: [];
      };
    };
    Views: {
      [_ in never]: never;
    };
    Functions: {
      has_role: {
        Args: {
          _role: Database["public"]["Enums"]["app_role"];
          _user_id: string;
        };
        Returns: boolean;
      };
    };
    Enums: {
      access_role: "student" | "tutor" | "admin";
      app_role: "student" | "tutor" | "admin";
      file_type: "student_pack" | "exhibit" | "tutor_pack" | "answer_guide" | "other";
      progress_status: "not_started" | "in_progress" | "submitted" | "completed";
      submission_status: "draft" | "submitted" | "reviewed";
    };
    CompositeTypes: {
      [_ in never]: never;
    };
  };
};

type DatabaseWithoutInternals = Omit<Database, "__InternalSupabase">;

type DefaultSchema = DatabaseWithoutInternals[Extract<keyof Database, "public">];

export type Tables<
  DefaultSchemaTableNameOrOptions extends
    | keyof (DefaultSchema["Tables"] & DefaultSchema["Views"])
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals;
  }
    ? keyof (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
        DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals;
}
  ? (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
      DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])[TableName] extends {
      Row: infer R;
    }
    ? R
    : never
  : DefaultSchemaTableNameOrOptions extends keyof (DefaultSchema["Tables"] & DefaultSchema["Views"])
    ? (DefaultSchema["Tables"] & DefaultSchema["Views"])[DefaultSchemaTableNameOrOptions] extends {
        Row: infer R;
      }
      ? R
      : never
    : never;

export type TablesInsert<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals;
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals;
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Insert: infer I;
    }
    ? I
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Insert: infer I;
      }
      ? I
      : never
    : never;

export type TablesUpdate<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals;
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals;
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Update: infer U;
    }
    ? U
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Update: infer U;
      }
      ? U
      : never
    : never;

export type Enums<
  DefaultSchemaEnumNameOrOptions extends
    | keyof DefaultSchema["Enums"]
    | { schema: keyof DatabaseWithoutInternals },
  EnumName extends DefaultSchemaEnumNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals;
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"]
    : never = never,
> = DefaultSchemaEnumNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals;
}
  ? DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"][EnumName]
  : DefaultSchemaEnumNameOrOptions extends keyof DefaultSchema["Enums"]
    ? DefaultSchema["Enums"][DefaultSchemaEnumNameOrOptions]
    : never;

export type CompositeTypes<
  PublicCompositeTypeNameOrOptions extends
    | keyof DefaultSchema["CompositeTypes"]
    | { schema: keyof DatabaseWithoutInternals },
  CompositeTypeName extends PublicCompositeTypeNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals;
  }
    ? keyof DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"]
    : never = never,
> = PublicCompositeTypeNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals;
}
  ? DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"][CompositeTypeName]
  : PublicCompositeTypeNameOrOptions extends keyof DefaultSchema["CompositeTypes"]
    ? DefaultSchema["CompositeTypes"][PublicCompositeTypeNameOrOptions]
    : never;

export const Constants = {
  public: {
    Enums: {
      access_role: ["student", "tutor", "admin"],
      app_role: ["student", "tutor", "admin"],
      file_type: ["student_pack", "exhibit", "tutor_pack", "answer_guide", "other"],
      progress_status: ["not_started", "in_progress", "submitted", "completed"],
      submission_status: ["draft", "submitted", "reviewed"],
    },
  },
} as const;
