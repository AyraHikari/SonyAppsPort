.class Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AssistantInputConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;


# direct methods
.method constructor <init>(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    .line 205
    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 208
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 209
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    invoke-static {v1}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->-$$Nest$fgetmContext(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->onAssistantProgress(F)V

    .line 210
    return-void
.end method
