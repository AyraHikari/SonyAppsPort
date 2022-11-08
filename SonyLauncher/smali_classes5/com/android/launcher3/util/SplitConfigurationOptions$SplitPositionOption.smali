.class public Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;
.super Ljava/lang/Object;
.source "SplitConfigurationOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/SplitConfigurationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitPositionOption"
.end annotation


# instance fields
.field public final iconResId:I

.field public final mStageType:I

.field public final stagePosition:I

.field public final textResId:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "iconResId"    # I
    .param p2, "textResId"    # I
    .param p3, "stagePosition"    # I
    .param p4, "stageType"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->iconResId:I

    .line 87
    iput p2, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->textResId:I

    .line 88
    iput p3, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->stagePosition:I

    .line 89
    iput p4, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->mStageType:I

    .line 90
    return-void
.end method
