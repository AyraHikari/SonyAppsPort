.class Lcom/android/launcher3/statehandlers/DepthController$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DepthController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/statehandlers/DepthController;->onMultiWindowModeChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/statehandlers/DepthController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/statehandlers/DepthController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/statehandlers/DepthController;

    .line 365
    iput-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController$6;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 368
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController$6;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/statehandlers/DepthController;->-$$Nest$fputmIgnoreStateChangesDuringMultiWindowAnimation(Lcom/android/launcher3/statehandlers/DepthController;Z)V

    .line 369
    return-void
.end method
