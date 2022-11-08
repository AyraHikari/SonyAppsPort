.class public final Lcom/android/launcher3/util/SplitConfigurationOptions;
.super Ljava/lang/Object;
.source "SplitConfigurationOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;,
        Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;,
        Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;,
        Lcom/android/launcher3/util/SplitConfigurationOptions$StageType;,
        Lcom/android/launcher3/util/SplitConfigurationOptions$StagePosition;
    }
.end annotation


# static fields
.field public static final DEFAULT_SPLIT_RATIO:F = 0.5f

.field public static final STAGE_POSITION_BOTTOM_OR_RIGHT:I = 0x1

.field public static final STAGE_POSITION_TOP_OR_LEFT:I = 0x0

.field public static final STAGE_POSITION_UNDEFINED:I = -0x1

.field public static final STAGE_TYPE_MAIN:I = 0x0

.field public static final STAGE_TYPE_SIDE:I = 0x1

.field public static final STAGE_TYPE_UNDEFINED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
