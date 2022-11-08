.class Lcom/android/launcher3/LauncherInitListener$1;
.super Lcom/android/quickstep/util/RemoteAnimationProvider;
.source "LauncherInitListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherInitListener;->handleInit(Lcom/android/launcher3/Launcher;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherInitListener;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherInitListener;Landroid/os/CancellationSignal;Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherInitListener;

    .line 52
    iput-object p1, p0, Lcom/android/launcher3/LauncherInitListener$1;->this$0:Lcom/android/launcher3/LauncherInitListener;

    iput-object p2, p0, Lcom/android/launcher3/LauncherInitListener$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    iput-object p3, p0, Lcom/android/launcher3/LauncherInitListener$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Lcom/android/quickstep/util/RemoteAnimationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 3
    .param p1, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p2, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/LauncherInitListener$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/LauncherInitListener$1;->this$0:Lcom/android/launcher3/LauncherInitListener;

    invoke-static {v0}, Lcom/android/launcher3/LauncherInitListener;->-$$Nest$fgetmRemoteAnimationProvider(Lcom/android/launcher3/LauncherInitListener;)Lcom/android/quickstep/util/RemoteAnimationProvider;

    move-result-object v0

    .line 60
    .local v0, "provider":Lcom/android/quickstep/util/RemoteAnimationProvider;
    iget-object v1, p0, Lcom/android/launcher3/LauncherInitListener$1;->this$0:Lcom/android/launcher3/LauncherInitListener;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherInitListener;->-$$Nest$fputmRemoteAnimationProvider(Lcom/android/launcher3/LauncherInitListener;Lcom/android/quickstep/util/RemoteAnimationProvider;)V

    .line 62
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/LauncherInitListener$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget-boolean v1, v1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/util/RemoteAnimationProvider;->createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object v1

    return-object v1

    .line 65
    :cond_0
    return-object v2
.end method
