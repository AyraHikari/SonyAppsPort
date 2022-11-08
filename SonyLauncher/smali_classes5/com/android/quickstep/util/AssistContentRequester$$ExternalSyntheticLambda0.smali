.class public final synthetic Lcom/android/quickstep/util/AssistContentRequester$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/util/AssistContentRequester;

.field public final synthetic f$1:Lcom/android/quickstep/util/AssistContentRequester$Callback;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/AssistContentRequester;Lcom/android/quickstep/util/AssistContentRequester$Callback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/AssistContentRequester$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/util/AssistContentRequester;

    iput-object p2, p0, Lcom/android/quickstep/util/AssistContentRequester$$ExternalSyntheticLambda0;->f$1:Lcom/android/quickstep/util/AssistContentRequester$Callback;

    iput p3, p0, Lcom/android/quickstep/util/AssistContentRequester$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/util/AssistContentRequester$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/util/AssistContentRequester;

    iget-object v1, p0, Lcom/android/quickstep/util/AssistContentRequester$$ExternalSyntheticLambda0;->f$1:Lcom/android/quickstep/util/AssistContentRequester$Callback;

    iget v2, p0, Lcom/android/quickstep/util/AssistContentRequester$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/util/AssistContentRequester;->lambda$requestAssistContent$0$com-android-quickstep-util-AssistContentRequester(Lcom/android/quickstep/util/AssistContentRequester$Callback;I)V

    return-void
.end method
