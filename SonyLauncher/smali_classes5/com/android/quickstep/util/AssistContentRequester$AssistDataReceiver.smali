.class final Lcom/android/quickstep/util/AssistContentRequester$AssistDataReceiver;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "AssistContentRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/AssistContentRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AssistDataReceiver"
.end annotation


# instance fields
.field private final mCallbackKey:Ljava/lang/Object;

.field private final mParentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/quickstep/util/AssistContentRequester;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/quickstep/util/AssistContentRequester$Callback;Lcom/android/quickstep/util/AssistContentRequester;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/quickstep/util/AssistContentRequester$Callback;
    .param p2, "parent"    # Lcom/android/quickstep/util/AssistContentRequester;

    .line 101
    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/AssistContentRequester$AssistDataReceiver;->mCallbackKey:Ljava/lang/Object;

    .line 102
    invoke-static {p2}, Lcom/android/quickstep/util/AssistContentRequester;->-$$Nest$fgetmPendingCallbacks(Lcom/android/quickstep/util/AssistContentRequester;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/quickstep/util/AssistContentRequester$AssistDataReceiver;->mParentRef:Ljava/lang/ref/WeakReference;

    .line 104
    return-void
.end method

.method static synthetic lambda$onHandleAssistData$0(Lcom/android/quickstep/util/AssistContentRequester$Callback;Landroid/app/assist/AssistContent;)V
    .locals 0
    .param p0, "callback"    # Lcom/android/quickstep/util/AssistContentRequester$Callback;
    .param p1, "content"    # Landroid/app/assist/AssistContent;

    .line 123
    invoke-interface {p0, p1}, Lcom/android/quickstep/util/AssistContentRequester$Callback;->onAssistContentAvailable(Landroid/app/assist/AssistContent;)V

    return-void
.end method


# virtual methods
.method public onHandleAssistData(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "data"    # Landroid/os/Bundle;

    .line 108
    if-nez p1, :cond_0

    .line 109
    return-void

    .line 112
    :cond_0
    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistContent;

    .line 113
    .local v0, "content":Landroid/app/assist/AssistContent;
    const-string v1, "AssistContentRequester"

    if-nez v0, :cond_1

    .line 114
    const-string v2, "Received AssistData, but no AssistContent found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/android/quickstep/util/AssistContentRequester$AssistDataReceiver;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/util/AssistContentRequester;

    .line 119
    .local v2, "requester":Lcom/android/quickstep/util/AssistContentRequester;
    if-eqz v2, :cond_3

    .line 120
    invoke-static {v2}, Lcom/android/quickstep/util/AssistContentRequester;->-$$Nest$fgetmPendingCallbacks(Lcom/android/quickstep/util/AssistContentRequester;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/util/AssistContentRequester$AssistDataReceiver;->mCallbackKey:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/util/AssistContentRequester$Callback;

    .line 121
    .local v3, "callback":Lcom/android/quickstep/util/AssistContentRequester$Callback;
    if-eqz v3, :cond_2

    .line 122
    new-instance v1, Lcom/android/quickstep/util/AssistContentRequester$AssistDataReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1, v3, v0}, Lcom/android/quickstep/util/AssistContentRequester$AssistDataReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/util/AssistContentRequester$Callback;Landroid/app/assist/AssistContent;)V

    invoke-static {v2, v1}, Lcom/android/quickstep/util/AssistContentRequester;->-$$Nest$mexecuteOnMainExecutor(Lcom/android/quickstep/util/AssistContentRequester;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 125
    :cond_2
    const-string v4, "Callback received after calling UI was disposed of"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v3    # "callback":Lcom/android/quickstep/util/AssistContentRequester$Callback;
    :goto_0
    goto :goto_1

    .line 128
    :cond_3
    const-string v3, "Callback received after Requester was collected"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_1
    return-void
.end method

.method public onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    .line 133
    return-void
.end method
