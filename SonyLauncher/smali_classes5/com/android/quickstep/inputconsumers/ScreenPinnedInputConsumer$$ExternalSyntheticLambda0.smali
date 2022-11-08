.class public final synthetic Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/android/quickstep/GestureState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;Landroid/content/Context;Lcom/android/quickstep/GestureState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;

    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer$$ExternalSyntheticLambda0;->f$2:Lcom/android/quickstep/GestureState;

    return-void
.end method


# virtual methods
.method public final onMotionPauseDetected()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer$$ExternalSyntheticLambda0;->f$2:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;->lambda$new$0$com-android-quickstep-inputconsumers-ScreenPinnedInputConsumer(Landroid/content/Context;Lcom/android/quickstep/GestureState;)V

    return-void
.end method
