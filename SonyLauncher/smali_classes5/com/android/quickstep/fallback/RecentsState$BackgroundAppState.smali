.class Lcom/android/quickstep/fallback/RecentsState$BackgroundAppState;
.super Lcom/android/quickstep/fallback/RecentsState;
.source "RecentsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/fallback/RecentsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundAppState"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/fallback/RecentsState;-><init>(II)V

    .line 163
    return-void
.end method


# virtual methods
.method public getOverviewScaleAndOffset(Lcom/android/quickstep/RecentsActivity;)[F
    .locals 1
    .param p1, "activity"    # Lcom/android/quickstep/RecentsActivity;

    .line 167
    invoke-static {p1}, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;->getOverviewScaleAndOffsetForBackgroundState(Lcom/android/launcher3/BaseDraggingActivity;)[F

    move-result-object v0

    return-object v0
.end method
