.class Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NoButtonQuickSwitchTouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->onDragEnd(Landroid/graphics/PointF;)V
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

    .line 330
    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$2;->this$0:Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 333
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$2;->this$0:Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->-$$Nest$monAnimationToStateCompleted(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;Lcom/android/launcher3/LauncherState;)V

    .line 334
    return-void
.end method
