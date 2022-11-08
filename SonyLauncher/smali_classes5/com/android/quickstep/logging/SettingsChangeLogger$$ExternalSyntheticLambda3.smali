.class public final synthetic Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/logging/StatsLogManager$EventEnum;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda3;->f$0:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda3;->f$2:Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda3;->f$0:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda3;->f$2:Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;

    invoke-static {v0, v1, v2}, Lcom/android/quickstep/logging/SettingsChangeLogger;->lambda$logSnapshot$1(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;)I

    move-result v0

    return v0
.end method
