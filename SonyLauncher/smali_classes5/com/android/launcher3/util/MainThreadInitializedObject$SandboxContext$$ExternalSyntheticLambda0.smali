.class public final synthetic Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;

.field public final synthetic f$1:Lcom/android/launcher3/util/MainThreadInitializedObject;

.field public final synthetic f$2:Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;Lcom/android/launcher3/util/MainThreadInitializedObject;Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;

    iput-object p2, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iput-object p3, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;

    iget-object v1, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->lambda$getObject$0$com-android-launcher3-util-MainThreadInitializedObject$SandboxContext(Lcom/android/launcher3/util/MainThreadInitializedObject;Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
