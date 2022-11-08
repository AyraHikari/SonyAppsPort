.class public final synthetic Lcom/android/launcher3/util/ViewPool$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/util/ViewPool;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/view/LayoutInflater;

.field public final synthetic f$3:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/ViewPool;ILandroid/view/LayoutInflater;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/ViewPool$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/util/ViewPool;

    iput p2, p0, Lcom/android/launcher3/util/ViewPool$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/launcher3/util/ViewPool$$ExternalSyntheticLambda1;->f$2:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/android/launcher3/util/ViewPool$$ExternalSyntheticLambda1;->f$3:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/util/ViewPool$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/util/ViewPool;

    iget v1, p0, Lcom/android/launcher3/util/ViewPool$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/android/launcher3/util/ViewPool$$ExternalSyntheticLambda1;->f$2:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/launcher3/util/ViewPool$$ExternalSyntheticLambda1;->f$3:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/util/ViewPool;->lambda$initPool$1$com-android-launcher3-util-ViewPool(ILandroid/view/LayoutInflater;Landroid/os/Handler;)V

    return-void
.end method
