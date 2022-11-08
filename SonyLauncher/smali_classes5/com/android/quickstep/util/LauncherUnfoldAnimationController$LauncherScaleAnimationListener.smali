.class Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;
.super Ljava/lang/Object;
.source "LauncherUnfoldAnimationController.java"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/LauncherUnfoldAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherScaleAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;


# direct methods
.method private constructor <init>(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;->this$0:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;-><init>(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)V

    return-void
.end method

.method private setScale(F)V
    .locals 2
    .param p1, "value"    # F

    .line 161
    invoke-static {}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->-$$Nest$sfgetWORKSPACE_SCALE_PROPERTY()Landroid/util/FloatProperty;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;->this$0:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    invoke-static {v1}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->-$$Nest$fgetmLauncher(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 162
    invoke-static {}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->-$$Nest$sfgetHOTSEAT_SCALE_PROPERTY()Landroid/util/FloatProperty;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;->this$0:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    invoke-static {v1}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->-$$Nest$fgetmLauncher(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 163
    return-void
.end method


# virtual methods
.method public onTransitionFinished()V
    .locals 1

    .line 152
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;->setScale(F)V

    .line 153
    return-void
.end method

.method public onTransitionProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    .line 157
    const v0, 0x3f59999a    # 0.85f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v1, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;->setScale(F)V

    .line 158
    return-void
.end method

.method public onTransitionStarted()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;->this$0:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    invoke-static {v0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->-$$Nest$fgetmLauncher(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;->this$0:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    invoke-static {v1}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->-$$Nest$fgetmLauncher(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setPivotToScaleWithSelf(Landroid/view/View;)V

    .line 148
    return-void
.end method
