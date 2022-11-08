.class Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NoButtonQuickSwitchTouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->setupOverviewAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    .line 250
    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$1;->this$0:Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$1;->this$0:Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    invoke-static {v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->-$$Nest$fgetmRecentsView(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)Lcom/android/quickstep/views/LauncherRecentsView;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$1;->this$0:Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    invoke-static {v1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->-$$Nest$fgetmRecentsView(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)Lcom/android/quickstep/views/LauncherRecentsView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 259
    .local v0, "alpha":F
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NBQSTC setupOverviewAnimators onCancel, alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "b/223498680"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 264
    const-string v0, "b/223498680"

    const-string v1, "NBQSTC setupOverviewAnimators onEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 253
    const-string v0, "b/223498680"

    const-string v1, "NBQSTC setupOverviewAnimators onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method
