.class Lcom/android/quickstep/interaction/NavBarGestureHandler$AssistantGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NavBarGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/interaction/NavBarGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssistantGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/NavBarGestureHandler;


# direct methods
.method private constructor <init>(Lcom/android/quickstep/interaction/NavBarGestureHandler;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler$AssistantGestureListener;->this$0:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quickstep/interaction/NavBarGestureHandler;Lcom/android/quickstep/interaction/NavBarGestureHandler$AssistantGestureListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/NavBarGestureHandler$AssistantGestureListener;-><init>(Lcom/android/quickstep/interaction/NavBarGestureHandler;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 330
    iget-object v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler$AssistantGestureListener;->this$0:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    invoke-static {v0}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->-$$Nest$fgetmLaunchedAssistant(Lcom/android/quickstep/interaction/NavBarGestureHandler;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler$AssistantGestureListener;->this$0:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    invoke-static {v0}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->-$$Nest$fgetmTouchCameFromAssistantCorner(Lcom/android/quickstep/interaction/NavBarGestureHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 332
    .local v0, "velocity":Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler$AssistantGestureListener;->this$0:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    neg-float v2, p4

    invoke-static {v1, p3, v2}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->-$$Nest$misValidAssistantGestureAngle(Lcom/android/quickstep/interaction/NavBarGestureHandler;FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler$AssistantGestureListener;->this$0:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    invoke-static {v1}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->-$$Nest$fgetmGestureCallback(Lcom/android/quickstep/interaction/NavBarGestureHandler;)Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler$AssistantGestureListener;->this$0:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    invoke-static {v1}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->-$$Nest$fgetmGestureCallback(Lcom/android/quickstep/interaction/NavBarGestureHandler;)Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ASSISTANT_NOT_STARTED_BAD_ANGLE:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    invoke-interface {v1, v2, v0}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V

    goto :goto_0

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler$AssistantGestureListener;->this$0:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    invoke-static {v1}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->-$$Nest$fgetmAssistantDistance(Lcom/android/quickstep/interaction/NavBarGestureHandler;)F

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler$AssistantGestureListener;->this$0:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    invoke-static {v2}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->-$$Nest$fgetmAssistantFlingDistThreshold(Lcom/android/quickstep/interaction/NavBarGestureHandler;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 338
    iget-object v1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler$AssistantGestureListener;->this$0:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->-$$Nest$fputmAssistantLastProgress(Lcom/android/quickstep/interaction/NavBarGestureHandler;F)V

    .line 339
    iget-object v1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler$AssistantGestureListener;->this$0:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    invoke-static {v1, v0}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->-$$Nest$mstartAssistant(Lcom/android/quickstep/interaction/NavBarGestureHandler;Landroid/graphics/PointF;)V

    .line 342
    .end local v0    # "velocity":Landroid/graphics/PointF;
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
