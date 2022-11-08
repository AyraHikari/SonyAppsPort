.class Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AssistantInputConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssistantGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;


# direct methods
.method private constructor <init>(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;->this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;-><init>(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 269
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;->this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    neg-float v1, p4

    invoke-static {v0, p3, v1}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->-$$Nest$misValidAssistantGestureAngle(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;->this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    invoke-static {v0}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->-$$Nest$fgetmDistance(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;->this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    invoke-static {v1}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->-$$Nest$fgetmFlingDistThreshold(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;->this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    invoke-static {v0}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->-$$Nest$fgetmLaunchedAssistant(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;->this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    iget v0, v0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;->this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->-$$Nest$fputmLastProgress(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;F)V

    .line 274
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;->this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    invoke-static {v1}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->-$$Nest$fgetmContext(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    mul-float v1, p3, p3

    mul-float v2, p4, p4

    add-float/2addr v1, v2

    float-to-double v1, v1

    .line 275
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 274
    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->onAssistantGestureCompletion(F)V

    .line 276
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$AssistantGestureListener;->this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    invoke-static {v0}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->-$$Nest$mstartAssistantInternal(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)V

    .line 278
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
