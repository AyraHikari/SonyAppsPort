.class public final synthetic Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/util/SettingsCache;

.field public final synthetic f$1:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/SettingsCache;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/util/SettingsCache;

    iput-object p2, p0, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda2;->f$1:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/util/SettingsCache;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda2;->f$1:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherAppState;->lambda$new$3(Lcom/android/launcher3/util/SettingsCache;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method
