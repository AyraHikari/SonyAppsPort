.class Lcom/android/quickstep/interaction/EdgeBackGesturePanel$1;
.super Ljava/lang/Object;
.source "EdgeBackGesturePanel.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/interaction/EdgeBackGesturePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    .line 182
    iput-object p1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$1;->this$0:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 2
    .param p1, "animation"    # Landroidx/dynamicanimation/animation/DynamicAnimation;
    .param p2, "canceled"    # Z
    .param p3, "value"    # F
    .param p4, "velocity"    # F

    .line 186
    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 187
    if-nez p2, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$1;->this$0:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->setVisibility(I)V

    .line 190
    :cond_0
    return-void
.end method
