.class public final synthetic Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/util/FlagOp;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/util/FlagOp;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/FlagOp;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/util/FlagOp;

    iput p2, p0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/util/FlagOp;

    iget v1, p0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/FlagOp;->lambda$addFlag$1(Lcom/android/launcher3/util/FlagOp;II)I

    move-result p1

    return p1
.end method
