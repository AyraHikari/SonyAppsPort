.class public final synthetic Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Supplier;

.field public final synthetic f$1:Ljava/util/function/Function;

.field public final synthetic f$2:Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Function;

    iput-object p3, p0, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Supplier;

    iget-object v1, p0, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Function;

    iget-object v2, p0, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$getUIProperty$12(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
