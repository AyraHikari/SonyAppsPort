.class Lcom/android/quickstep/fallback/RecentsState$ModalState;
.super Lcom/android/quickstep/fallback/RecentsState;
.source "RecentsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/fallback/RecentsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModalState"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/fallback/RecentsState;-><init>(II)V

    .line 152
    return-void
.end method


# virtual methods
.method public getOverviewScaleAndOffset(Lcom/android/quickstep/RecentsActivity;)[F
    .locals 1
    .param p1, "activity"    # Lcom/android/quickstep/RecentsActivity;

    .line 156
    invoke-static {p1}, Lcom/android/launcher3/uioverrides/states/OverviewModalTaskState;->getOverviewScaleAndOffsetForModalState(Lcom/android/launcher3/BaseDraggingActivity;)[F

    move-result-object v0

    return-object v0
.end method
