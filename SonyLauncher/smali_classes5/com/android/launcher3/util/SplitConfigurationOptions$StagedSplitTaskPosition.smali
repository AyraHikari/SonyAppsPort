.class public Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;
.super Ljava/lang/Object;
.source "SplitConfigurationOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/SplitConfigurationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StagedSplitTaskPosition"
.end annotation


# instance fields
.field public stagePosition:I

.field public stageType:I

.field public taskId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    .line 168
    iput v0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->stagePosition:I

    .line 170
    iput v0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->stageType:I

    return-void
.end method
