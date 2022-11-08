.class public final synthetic Lcom/android/quickstep/logging/SettingsChangeLogger$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/util/DisplayController$NavigationMode;

    invoke-static {p1}, Lcom/android/quickstep/logging/SettingsChangeLogger;->lambda$logSnapshot$0(Lcom/android/launcher3/util/DisplayController$NavigationMode;)Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    move-result-object p1

    return-object p1
.end method
