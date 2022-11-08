.class public Lcom/android/quickstep/util/AssistContentRequester;
.super Ljava/lang/Object;
.source "AssistContentRequester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/AssistContentRequester$AssistDataReceiver;,
        Lcom/android/quickstep/util/AssistContentRequester$Callback;
    }
.end annotation


# static fields
.field private static final ASSIST_KEY_CONTENT:Ljava/lang/String; = "content"

.field private static final TAG:Ljava/lang/String; = "AssistContentRequester"


# instance fields
.field private final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final mPackageName:Ljava/lang/String;

.field private final mPendingCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/android/quickstep/util/AssistContentRequester$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemInteractionExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPendingCallbacks(Lcom/android/quickstep/util/AssistContentRequester;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/AssistContentRequester;->mPendingCallbacks:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mexecuteOnMainExecutor(Lcom/android/quickstep/util/AssistContentRequester;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/AssistContentRequester;->executeOnMainExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/util/AssistContentRequester;->mPendingCallbacks:Ljava/util/Map;

    .line 64
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/util/AssistContentRequester;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/util/AssistContentRequester;->mPackageName:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iput-object v0, p0, Lcom/android/quickstep/util/AssistContentRequester;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 67
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iput-object v0, p0, Lcom/android/quickstep/util/AssistContentRequester;->mSystemInteractionExecutor:Ljava/util/concurrent/Executor;

    .line 68
    return-void
.end method

.method private executeOnMainExecutor(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 89
    iget-object v0, p0, Lcom/android/quickstep/util/AssistContentRequester;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method


# virtual methods
.method synthetic lambda$requestAssistContent$0$com-android-quickstep-util-AssistContentRequester(Lcom/android/quickstep/util/AssistContentRequester$Callback;I)V
    .locals 3
    .param p1, "callback"    # Lcom/android/quickstep/util/AssistContentRequester$Callback;
    .param p2, "taskId"    # I

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/quickstep/util/AssistContentRequester;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    new-instance v1, Lcom/android/quickstep/util/AssistContentRequester$AssistDataReceiver;

    invoke-direct {v1, p1, p0}, Lcom/android/quickstep/util/AssistContentRequester$AssistDataReceiver;-><init>(Lcom/android/quickstep/util/AssistContentRequester$Callback;Lcom/android/quickstep/util/AssistContentRequester;)V

    iget-object v2, p0, Lcom/android/quickstep/util/AssistContentRequester;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p2, v2}, Landroid/app/IActivityTaskManager;->requestAssistDataForTask(Landroid/app/IAssistDataReceiver;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting assist content failed for task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AssistContentRequester"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public requestAssistContent(ILcom/android/quickstep/util/AssistContentRequester$Callback;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "callback"    # Lcom/android/quickstep/util/AssistContentRequester$Callback;

    .line 78
    iget-object v0, p0, Lcom/android/quickstep/util/AssistContentRequester;->mSystemInteractionExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/quickstep/util/AssistContentRequester$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/quickstep/util/AssistContentRequester$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/util/AssistContentRequester;Lcom/android/quickstep/util/AssistContentRequester$Callback;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method
