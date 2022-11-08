.class public final synthetic Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

.field public final synthetic f$1:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    iput-object p2, p0, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda2;->f$1:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    iget-object v1, p0, Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda2;->f$1:Landroid/content/SharedPreferences;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;

    invoke-static {v0, v1, p1, p2}, Lcom/android/quickstep/logging/SettingsChangeLogger;->lambda$logSnapshot$2(Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/android/quickstep/logging/SettingsChangeLogger$LoggablePref;)V

    return-void
.end method
