.class Lcom/android/quickstep/fallback/RecentsState$LauncherState;
.super Lcom/android/quickstep/fallback/RecentsState;
.source "RecentsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/fallback/RecentsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LauncherState"
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/fallback/RecentsState;-><init>(II)V

    .line 174
    return-void
.end method


# virtual methods
.method public getOverviewScaleAndOffset(Lcom/android/quickstep/RecentsActivity;)[F
    .locals 1
    .param p1, "activity"    # Lcom/android/quickstep/RecentsActivity;

    .line 178
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
