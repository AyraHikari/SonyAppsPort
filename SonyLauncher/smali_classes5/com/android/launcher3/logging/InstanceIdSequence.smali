.class public Lcom/android/launcher3/logging/InstanceIdSequence;
.super Ljava/lang/Object;
.source "InstanceIdSequence.java"


# instance fields
.field protected final mInstanceIdMax:I

.field private final mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>(I)V

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "instanceIdMax"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/logging/InstanceIdSequence;->mRandom:Ljava/util/Random;

    .line 44
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/logging/InstanceIdSequence;->mInstanceIdMax:I

    .line 45
    return-void
.end method


# virtual methods
.method public newInstanceId()Lcom/android/launcher3/logging/InstanceId;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/logging/InstanceIdSequence;->mRandom:Ljava/util/Random;

    iget v1, p0, Lcom/android/launcher3/logging/InstanceIdSequence;->mInstanceIdMax:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceIdInternal(I)Lcom/android/launcher3/logging/InstanceId;

    move-result-object v0

    return-object v0
.end method

.method protected newInstanceIdInternal(I)Lcom/android/launcher3/logging/InstanceId;
    .locals 1
    .param p1, "id"    # I

    .line 69
    new-instance v0, Lcom/android/launcher3/logging/InstanceId;

    invoke-direct {v0, p1}, Lcom/android/launcher3/logging/InstanceId;-><init>(I)V

    return-object v0
.end method
