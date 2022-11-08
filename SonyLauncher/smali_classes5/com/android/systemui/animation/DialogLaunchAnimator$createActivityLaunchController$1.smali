.class public final Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;
.super Ljava/lang/Object;
.source "DialogLaunchAnimator.kt"

# interfaces
.implements Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/DialogLaunchAnimator;->createActivityLaunchController(Landroid/view/View;Ljava/lang/Integer;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00009\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u0096\u0001J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002J\u0008\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0003H\u0016J\u0008\u0010\u0016\u001a\u00020\u0012H\u0016J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0003H\u0016J!\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cH\u0096\u0001J\u0010\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0003H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0004R\u0018\u0010\u0005\u001a\u00020\u0006X\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u000c8VX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001f"
    }
    d2 = {
        "com/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1",
        "Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;",
        "isDialogLaunch",
        "",
        "()Z",
        "launchContainer",
        "Landroid/view/ViewGroup;",
        "getLaunchContainer",
        "()Landroid/view/ViewGroup;",
        "setLaunchContainer",
        "(Landroid/view/ViewGroup;)V",
        "openingWindowSyncView",
        "Landroid/view/View;",
        "getOpeningWindowSyncView",
        "()Landroid/view/View;",
        "createAnimatorState",
        "Lcom/android/systemui/animation/LaunchAnimator$State;",
        "disableDialogDismiss",
        "",
        "enableDialogDismiss",
        "onIntentStarted",
        "willAnimate",
        "onLaunchAnimationCancelled",
        "onLaunchAnimationEnd",
        "isExpandingFullyAbove",
        "onLaunchAnimationProgress",
        "state",
        "progress",
        "",
        "linearProgress",
        "onLaunchAnimationStart",
        "frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

.field final synthetic $animatedDialog:Lcom/android/systemui/animation/AnimatedDialog;

.field final synthetic $controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

.field final synthetic $dialog:Landroid/app/Dialog;

.field private final isDialogLaunch:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Landroid/app/Dialog;Lcom/android/systemui/animation/AnimatedDialog;)V
    .locals 1
    .param p1, "$controller"    # Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
    .param p2, "$dialog"    # Landroid/app/Dialog;
    .param p3, "$animatedDialog"    # Lcom/android/systemui/animation/AnimatedDialog;

    iput-object p1, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    iput-object p2, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$animatedDialog:Lcom/android/systemui/animation/AnimatedDialog;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->isDialogLaunch:Z

    .line 192
    return-void
.end method

.method private final disableDialogDismiss()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$dialog:Landroid/app/Dialog;

    sget-object v1, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1$disableDialogDismiss$1;->INSTANCE:Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1$disableDialogDismiss$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissOverride(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method private final enableDialogDismiss()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$animatedDialog:Lcom/android/systemui/animation/AnimatedDialog;

    new-instance v2, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1$enableDialogDismiss$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1$enableDialogDismiss$1;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setDismissOverride(Ljava/lang/Runnable;)V

    .line 243
    return-void
.end method


# virtual methods
.method public createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getOpeningWindowSyncView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->getOpeningWindowSyncView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isDialogLaunch()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->isDialogLaunch:Z

    return v0
.end method

.method public onIntentStarted(Z)V
    .locals 1
    .param p1, "willAnimate"    # Z

    .line 196
    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onIntentStarted(Z)V

    .line 198
    if-nez p1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 201
    :cond_0
    return-void
.end method

.method public onLaunchAnimationCancelled()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationCancelled()V

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->enableDialogDismiss()V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 207
    return-void
.end method

.method public onLaunchAnimationEnd(Z)V
    .locals 1
    .param p1, "isExpandingFullyAbove"    # Z

    .line 224
    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationEnd(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->enableDialogDismiss()V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 231
    return-void
.end method

.method public onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$State;FF)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$State;FF)V

    return-void
.end method

.method public onLaunchAnimationStart(Z)V
    .locals 2
    .param p1, "isExpandingFullyAbove"    # Z

    .line 210
    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationStart(Z)V

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->disableDialogDismiss()V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$animatedDialog:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-virtual {v0}, Lcom/android/systemui/animation/AnimatedDialog;->prepareForStackDismiss()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/animation/AnimatedDialog;->setTouchSurface(Landroid/view/View;)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 221
    return-void
.end method

.method public setLaunchContainer(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->setLaunchContainer(Landroid/view/ViewGroup;)V

    return-void
.end method
