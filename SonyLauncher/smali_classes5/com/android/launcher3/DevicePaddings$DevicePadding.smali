.class public final Lcom/android/launcher3/DevicePaddings$DevicePadding;
.super Ljava/lang/Object;
.source "DevicePaddings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DevicePaddings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DevicePadding"
.end annotation


# static fields
.field private static final ROUNDING_THRESHOLD_PX:I = 0x3


# instance fields
.field private final hotseatBottomPadding:Lcom/android/launcher3/DevicePaddings$PaddingFormula;

.field private final maxEmptySpacePx:I

.field private final workspaceBottomPadding:Lcom/android/launcher3/DevicePaddings$PaddingFormula;

.field private final workspaceTopPadding:Lcom/android/launcher3/DevicePaddings$PaddingFormula;


# direct methods
.method static bridge synthetic -$$Nest$fgetmaxEmptySpacePx(Lcom/android/launcher3/DevicePaddings$DevicePadding;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/DevicePaddings$DevicePadding;->maxEmptySpacePx:I

    return p0
.end method

.method public constructor <init>(ILcom/android/launcher3/DevicePaddings$PaddingFormula;Lcom/android/launcher3/DevicePaddings$PaddingFormula;Lcom/android/launcher3/DevicePaddings$PaddingFormula;)V
    .locals 0
    .param p1, "maxEmptySpacePx"    # I
    .param p2, "workspaceTopPadding"    # Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    .param p3, "workspaceBottomPadding"    # Lcom/android/launcher3/DevicePaddings$PaddingFormula;
    .param p4, "hotseatBottomPadding"    # Lcom/android/launcher3/DevicePaddings$PaddingFormula;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput p1, p0, Lcom/android/launcher3/DevicePaddings$DevicePadding;->maxEmptySpacePx:I

    .line 155
    iput-object p2, p0, Lcom/android/launcher3/DevicePaddings$DevicePadding;->workspaceTopPadding:Lcom/android/launcher3/DevicePaddings$PaddingFormula;

    .line 156
    iput-object p3, p0, Lcom/android/launcher3/DevicePaddings$DevicePadding;->workspaceBottomPadding:Lcom/android/launcher3/DevicePaddings$PaddingFormula;

    .line 157
    iput-object p4, p0, Lcom/android/launcher3/DevicePaddings$DevicePadding;->hotseatBottomPadding:Lcom/android/launcher3/DevicePaddings$PaddingFormula;

    .line 158
    return-void
.end method


# virtual methods
.method public getHotseatBottomPadding(I)I
    .locals 1
    .param p1, "extraSpacePx"    # I

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/DevicePaddings$DevicePadding;->hotseatBottomPadding:Lcom/android/launcher3/DevicePaddings$PaddingFormula;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/DevicePaddings$PaddingFormula;->calculate(I)I

    move-result v0

    return v0
.end method

.method public getMaxEmptySpacePx()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/android/launcher3/DevicePaddings$DevicePadding;->maxEmptySpacePx:I

    return v0
.end method

.method public getWorkspaceBottomPadding(I)I
    .locals 1
    .param p1, "extraSpacePx"    # I

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/DevicePaddings$DevicePadding;->workspaceBottomPadding:Lcom/android/launcher3/DevicePaddings$PaddingFormula;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/DevicePaddings$PaddingFormula;->calculate(I)I

    move-result v0

    return v0
.end method

.method public getWorkspaceTopPadding(I)I
    .locals 1
    .param p1, "extraSpacePx"    # I

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/DevicePaddings$DevicePadding;->workspaceTopPadding:Lcom/android/launcher3/DevicePaddings$PaddingFormula;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/DevicePaddings$PaddingFormula;->calculate(I)I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 6

    .line 177
    iget v0, p0, Lcom/android/launcher3/DevicePaddings$DevicePadding;->maxEmptySpacePx:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DevicePaddings$DevicePadding;->getWorkspaceTopPadding(I)I

    move-result v0

    .line 178
    .local v0, "workspaceTopPadding":I
    iget v1, p0, Lcom/android/launcher3/DevicePaddings$DevicePadding;->maxEmptySpacePx:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/DevicePaddings$DevicePadding;->getWorkspaceBottomPadding(I)I

    move-result v1

    .line 179
    .local v1, "workspaceBottomPadding":I
    iget v2, p0, Lcom/android/launcher3/DevicePaddings$DevicePadding;->maxEmptySpacePx:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/DevicePaddings$DevicePadding;->getHotseatBottomPadding(I)I

    move-result v2

    .line 180
    .local v2, "hotseatBottomPadding":I
    add-int v3, v0, v1

    add-int/2addr v3, v2

    .line 181
    .local v3, "sum":I
    iget v4, p0, Lcom/android/launcher3/DevicePaddings$DevicePadding;->maxEmptySpacePx:I

    sub-int v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 189
    .local v4, "diff":I
    const/4 v5, 0x3

    if-gt v4, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5
.end method
