.class public final synthetic Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/GestureDetector;


# direct methods
.method public synthetic constructor <init>(Landroid/view/GestureDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$$ExternalSyntheticLambda1;->f$0:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$$ExternalSyntheticLambda1;->f$0:Landroid/view/GestureDetector;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
