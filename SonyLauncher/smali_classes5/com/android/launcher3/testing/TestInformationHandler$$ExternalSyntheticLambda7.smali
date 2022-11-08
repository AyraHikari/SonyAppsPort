.class public final synthetic Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/testing/TestInformationHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/testing/TestInformationHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda7;->f$0:Lcom/android/launcher3/testing/TestInformationHandler;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda7;->f$0:Lcom/android/launcher3/testing/TestInformationHandler;

    invoke-virtual {v0}, Lcom/android/launcher3/testing/TestInformationHandler;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
