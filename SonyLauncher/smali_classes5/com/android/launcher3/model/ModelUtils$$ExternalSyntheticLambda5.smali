.class public final synthetic Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/util/IntArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/IntArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/util/IntArray;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntArray;->add(I)V

    return-void
.end method
