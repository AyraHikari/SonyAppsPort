.class public final synthetic Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/LongFunction;


# instance fields
.field public final synthetic f$0:Landroid/util/LongSparseArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/LongSparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
.method public final apply(J)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    return-object p1
.end method
