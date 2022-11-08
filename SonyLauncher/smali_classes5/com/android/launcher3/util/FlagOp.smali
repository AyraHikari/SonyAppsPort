.class public interface abstract Lcom/android/launcher3/util/FlagOp;
.super Ljava/lang/Object;
.source "FlagOp.java"


# static fields
.field public static final NO_OP:Lcom/android/launcher3/util/FlagOp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    return-void
.end method

.method public static synthetic lambda$addFlag$1(Lcom/android/launcher3/util/FlagOp;II)I
    .locals 1
    .param p0, "_this"    # Lcom/android/launcher3/util/FlagOp;
    .param p1, "flag"    # I
    .param p2, "i"    # I

    .line 31
    invoke-interface {p0, p2}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v0

    or-int/2addr v0, p1

    return v0
.end method

.method public static synthetic lambda$removeFlag$2(Lcom/android/launcher3/util/FlagOp;II)I
    .locals 2
    .param p0, "_this"    # Lcom/android/launcher3/util/FlagOp;
    .param p1, "flag"    # I
    .param p2, "i"    # I

    .line 38
    invoke-interface {p0, p2}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v0

    not-int v1, p1

    and-int/2addr v0, v1

    return v0
.end method

.method public static synthetic lambda$static$0(I)I
    .locals 0
    .param p0, "i"    # I

    .line 23
    return p0
.end method


# virtual methods
.method public addFlag(I)Lcom/android/launcher3/util/FlagOp;
    .locals 1
    .param p1, "flag"    # I

    .line 31
    new-instance v0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/FlagOp;I)V

    return-object v0
.end method

.method public abstract apply(I)I
.end method

.method public removeFlag(I)Lcom/android/launcher3/util/FlagOp;
    .locals 1
    .param p1, "flag"    # I

    .line 38
    new-instance v0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/util/FlagOp;I)V

    return-object v0
.end method

.method public setFlag(IZ)Lcom/android/launcher3/util/FlagOp;
    .locals 1
    .param p1, "flag"    # I
    .param p2, "enable"    # Z

    .line 46
    if-eqz p2, :cond_0

    invoke-interface {p0, p1}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    :goto_0
    return-object v0
.end method
