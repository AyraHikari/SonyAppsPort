.class public final synthetic Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/util/IntSet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/IntSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/util/IntSet;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/util/IntSet;

    invoke-static {v0, p1}, Lcom/android/launcher3/model/ModelUtils;->lambda$getMissingHotseatRanks$3(Lcom/android/launcher3/util/IntSet;I)Z

    move-result p1

    return p1
.end method
