.class public Lcom/android/launcher3/folder/FolderIcon;
.super Landroid/widget/FrameLayout;
.source "FolderIcon.java"

# interfaces
.implements Lcom/android/launcher3/model/data/FolderInfo$FolderListener;
.implements Lcom/android/launcher3/views/IconLabelDotView;
.implements Lcom/android/launcher3/dragndrop/DraggableView;
.implements Lcom/android/launcher3/Reorderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;
    }
.end annotation


# static fields
.field private static final DOT_SCALE_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/folder/FolderIcon;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final DROP_IN_ANIMATION_DURATION:I = 0x190

.field private static final ON_OPEN_DELAY:I = 0x320

.field public static final SPRING_LOADING_ENABLED:Z = true


# instance fields
.field mActivity:Lcom/android/launcher3/views/ActivityContext;

.field mAnimating:Z

.field mBackground:Lcom/android/launcher3/folder/PreviewBackground;

.field private mBackgroundIsVisible:Z

.field private mBadgeText:Ljava/lang/String;

.field private mCurrentPreviewItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
        deepExport = true
    .end annotation
.end field

.field private mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
        deepExport = true
    .end annotation
.end field

.field private mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

.field private mDotScale:F

.field private mDotScaleAnim:Landroid/animation/Animator;

.field mFolder:Lcom/android/launcher3/folder/Folder;

.field mFolderName:Lcom/android/launcher3/BubbleTextView;

.field private mForceHideDot:Z

.field public mInfo:Lcom/android/launcher3/model/data/FolderInfo;

.field private mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

.field mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

.field private mOpenAlarm:Lcom/android/launcher3/Alarm;

.field private mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

.field mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

.field mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

.field private mScaleForReorderBounce:F

.field private mSonyBadgeRenderer:Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;

.field private mSonyFolderBadgeInfo:Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

.field private mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

.field private mTouchArea:Landroid/graphics/Rect;

.field private final mTranslationForMoveFromCenterAnimation:Landroid/graphics/PointF;

.field private final mTranslationForReorderBounce:Landroid/graphics/PointF;

.field private final mTranslationForReorderPreview:Landroid/graphics/PointF;

.field private mTranslationXForTaskbarAlignmentAnimation:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmDotScale(Lcom/android/launcher3/folder/FolderIcon;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScale:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDotScale(Lcom/android/launcher3/folder/FolderIcon;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScale:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDotScaleAnim(Lcom/android/launcher3/folder/FolderIcon;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScaleAnim:Landroid/animation/Animator;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 153
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "dotScale"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/FolderIcon$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/folder/FolderIcon;->DOT_SCALE_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 173
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 119
    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v0}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackgroundIsVisible:Z

    .line 125
    new-instance v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mAnimating:Z

    .line 130
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    .line 133
    new-instance v0, Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-direct {v0}, Lcom/android/launcher3/dot/FolderDotInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    .line 135
    new-instance v0, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    invoke-direct {v0}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mSonyFolderBadgeInfo:Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTouchArea:Landroid/graphics/Rect;

    .line 146
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationForMoveFromCenterAnimation:Landroid/graphics/PointF;

    .line 147
    iput v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationXForTaskbarAlignmentAnimation:F

    .line 149
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationForReorderBounce:Landroid/graphics/PointF;

    .line 150
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationForReorderPreview:Landroid/graphics/PointF;

    .line 151
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mScaleForReorderBounce:F

    .line 379
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/FolderIcon$2;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

    .line 174
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->init()V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 168
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v0}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackgroundIsVisible:Z

    .line 125
    new-instance v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mAnimating:Z

    .line 130
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    .line 133
    new-instance v0, Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-direct {v0}, Lcom/android/launcher3/dot/FolderDotInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    .line 135
    new-instance v0, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    invoke-direct {v0}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mSonyFolderBadgeInfo:Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTouchArea:Landroid/graphics/Rect;

    .line 146
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationForMoveFromCenterAnimation:Landroid/graphics/PointF;

    .line 147
    iput v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationXForTaskbarAlignmentAnimation:F

    .line 149
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationForReorderBounce:Landroid/graphics/PointF;

    .line 150
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationForReorderPreview:Landroid/graphics/PointF;

    .line 151
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mScaleForReorderBounce:F

    .line 379
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/FolderIcon$2;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

    .line 169
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->init()V

    .line 170
    return-void
.end method

.method private adjustScale(ZZZZF)V
    .locals 1
    .param p1, "wasDotted"    # Z
    .param p2, "isDotted"    # Z
    .param p3, "wasSonyBadged"    # Z
    .param p4, "isSonyBadged"    # Z
    .param p5, "newBadgeScale"    # F

    .line 686
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p5, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    .line 687
    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    if-nez p4, :cond_2

    .line 689
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScale:F

    .line 692
    :cond_2
    return-void
.end method

.method private cancelDotScaleAnim()V
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScaleAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 662
    :cond_0
    return-void
.end method

.method private getLocalCenterForIndex(II[I)F
    .locals 5
    .param p1, "index"    # I
    .param p2, "curNumItems"    # I
    .param p3, "center"    # [I

    .line 721
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    .line 722
    const/4 v1, 0x4

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 721
    invoke-virtual {v0, v1, p2, v2}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 724
    iget v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    .line 725
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    .line 727
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewItemManager;->getIntrinsicIconSize()F

    move-result v0

    .line 728
    .local v0, "intrinsicIconSize":F
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v1, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    mul-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 729
    .local v1, "offsetX":F
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v4, v4, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    mul-float/2addr v4, v0

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 731
    .local v2, "offsetY":F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    aput v3, p3, v4

    .line 732
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x1

    aput v3, p3, v4

    .line 733
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    return v3
.end method

.method public static inflateFolderAndIcon(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;
    .locals 2
    .param p0, "resId"    # I
    .param p2, "group"    # Landroid/view/ViewGroup;
    .param p3, "folderInfo"    # Lcom/android/launcher3/model/data/FolderInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(ITT;",
            "Landroid/view/ViewGroup;",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ")",
            "Lcom/android/launcher3/folder/FolderIcon;"
        }
    .end annotation

    .line 186
    .local p1, "activityContext":Landroid/content/Context;, "TT;"
    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 188
    .local v0, "folder":Lcom/android/launcher3/folder/Folder;
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p0, v1, p2, p3}, Lcom/android/launcher3/folder/FolderIcon;->inflateIcon(ILcom/android/launcher3/views/ActivityContext;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    .line 189
    .local v1, "icon":Lcom/android/launcher3/folder/FolderIcon;
    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V

    .line 190
    invoke-virtual {v0, p3}, Lcom/android/launcher3/folder/Folder;->bind(Lcom/android/launcher3/model/data/FolderInfo;)V

    .line 191
    invoke-direct {v1, v0}, Lcom/android/launcher3/folder/FolderIcon;->setFolder(Lcom/android/launcher3/folder/Folder;)V

    .line 192
    return-object v1
.end method

.method public static inflateIcon(ILcom/android/launcher3/views/ActivityContext;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;
    .locals 10
    .param p0, "resId"    # I
    .param p1, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p2, "group"    # Landroid/view/ViewGroup;
    .param p3, "folderInfo"    # Lcom/android/launcher3/model/data/FolderInfo;

    .line 198
    const/4 v0, 0x0

    .line 205
    .local v0, "error":Z
    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 206
    .local v1, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 207
    const/4 v3, 0x0

    invoke-virtual {v2, p0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderIcon;

    .line 209
    .local v2, "icon":Lcom/android/launcher3/folder/FolderIcon;
    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderIcon;->setClipToPadding(Z)V

    .line 210
    sget v4, Lcom/android/launcher3/R$id;->folder_icon_name:I

    invoke-virtual {v2, v4}, Lcom/android/launcher3/folder/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    iput-object v4, v2, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    .line 211
    iget-object v5, p3, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v4, v2, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 213
    iget-object v4, v2, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v4}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 214
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v6, v1, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 216
    invoke-virtual {v2, p3}, Lcom/android/launcher3/folder/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 217
    sget-object v5, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/folder/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iput-object p3, v2, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    .line 219
    iput-object p1, v2, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 220
    iget-object v5, v1, Lcom/android/launcher3/DeviceProfile;->mDotRendererWorkSpace:Lcom/android/launcher3/icons/DotRenderer;

    iput-object v5, v2, Lcom/android/launcher3/folder/FolderIcon;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    .line 221
    iget-object v5, v1, Lcom/android/launcher3/DeviceProfile;->mSonyBadgeRenderer:Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;

    iput-object v5, v2, Lcom/android/launcher3/folder/FolderIcon;->mSonyBadgeRenderer:Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;

    .line 223
    iget-object v5, p3, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/folder/FolderIcon;->getAccessiblityTitle(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/launcher3/folder/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 226
    new-instance v5, Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-direct {v5}, Lcom/android/launcher3/dot/FolderDotInfo;-><init>()V

    .line 227
    .local v5, "folderDotInfo":Lcom/android/launcher3/dot/FolderDotInfo;
    new-instance v6, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    invoke-direct {v6}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;-><init>()V

    .line 228
    .local v6, "sonyFolderBadgeInfo":Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;
    iget-object v7, p3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    .line 229
    .local v8, "si":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-interface {p1, v8}, Lcom/android/launcher3/views/ActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/launcher3/dot/FolderDotInfo;->addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V

    .line 230
    invoke-interface {p1, v8}, Lcom/android/launcher3/views/ActivityContext;->getSonyBadgeInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->addSonyBadgeInfo(Lcom/sonymobile/launcher/badge/SonyBadgeInfo;)V

    .line 231
    .end local v8    # "si":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v2, v5}, Lcom/android/launcher3/folder/FolderIcon;->setDotInfo(Lcom/android/launcher3/dot/FolderDotInfo;)V

    .line 233
    invoke-virtual {v2, v6}, Lcom/android/launcher3/folder/FolderIcon;->setSonyBadgeInfo(Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;)V

    .line 235
    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/launcher3/folder/FolderIcon;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 237
    new-instance v7, Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v7, v8}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iput-object v7, v2, Lcom/android/launcher3/folder/FolderIcon;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    .line 238
    invoke-virtual {v7, p3}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    .line 239
    invoke-direct {v2, v3}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V

    .line 241
    invoke-virtual {p3, v2}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    .line 243
    return-object v2
.end method

.method private init()V
    .locals 1

    .line 178
    new-instance v0, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    .line 179
    new-instance v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    invoke-direct {v0}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    .line 180
    new-instance v0, Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/PreviewItemManager;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    .line 181
    new-instance v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-direct {v0}, Lcom/android/launcher3/icons/DotRenderer$DrawParams;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    .line 182
    return-void
.end method

.method private isBadgeStateChanged(ZZZZ)Z
    .locals 1
    .param p1, "wasDotted"    # Z
    .param p2, "isDotted"    # Z
    .param p3, "wasSonyBadged"    # Z
    .param p4, "isSonyBadged"    # Z

    .line 710
    if-nez p1, :cond_0

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_2

    :cond_1
    if-eqz p3, :cond_3

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isInHotseat()Z
    .locals 2

    .line 930
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->container:I

    const/16 v1, -0x65

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadFolderBadgeInfoFromFolderInfo()V
    .locals 5

    .line 322
    new-instance v0, Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-direct {v0}, Lcom/android/launcher3/dot/FolderDotInfo;-><init>()V

    .line 323
    .local v0, "folderDotInfo":Lcom/android/launcher3/dot/FolderDotInfo;
    new-instance v1, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    invoke-direct {v1}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;-><init>()V

    .line 324
    .local v1, "sonyFolderBadgeInfo":Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 325
    .local v3, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v4, v3}, Lcom/android/launcher3/views/ActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/dot/FolderDotInfo;->addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V

    .line 326
    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v4, v3}, Lcom/android/launcher3/views/ActivityContext;->getSonyBadgeInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->addSonyBadgeInfo(Lcom/sonymobile/launcher/badge/SonyBadgeInfo;)V

    .line 327
    .end local v3    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->setDotInfo(Lcom/android/launcher3/dot/FolderDotInfo;)V

    .line 329
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderIcon;->setSonyBadgeInfo(Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;)V

    .line 330
    return-void
.end method

.method private onDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;F)V
    .locals 8
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p3, "finalRect"    # Landroid/graphics/Rect;
    .param p4, "scaleRelativeToDragLayer"    # F

    .line 417
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;FIZLjava/lang/Runnable;)V

    .line 418
    return-void
.end method

.method private onDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;FIZLjava/lang/Runnable;)V
    .locals 27
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p3, "finalRect"    # Landroid/graphics/Rect;
    .param p4, "scaleRelativeToDragLayer"    # F
    .param p5, "index"    # I
    .param p6, "itemReturnedOnFailedDrop"    # Z
    .param p7, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .line 423
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v0, p5

    move-object/from16 v5, p7

    iget-object v4, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 424
    .local v4, "animateView":Lcom/android/launcher3/dragndrop/DragView;
    iget-object v1, v6, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->container:I

    const/16 v2, -0x66

    if-eq v1, v2, :cond_0

    .line 425
    const/4 v1, -0x1

    iput v1, v7, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    .line 426
    iput v1, v7, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    .line 431
    :cond_0
    if-eqz v4, :cond_b

    iget-object v1, v6, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v2, v1, Lcom/android/launcher3/Launcher;

    if-eqz v2, :cond_b

    .line 432
    move-object/from16 v20, v1

    check-cast v20, Lcom/android/launcher3/Launcher;

    .line 433
    .local v20, "launcher":Lcom/android/launcher3/Launcher;
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v3

    .line 434
    .local v3, "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    move-object/from16 v1, p3

    .line 435
    .local v1, "to":Landroid/graphics/Rect;
    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    .line 436
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    move-object v1, v9

    .line 437
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v9

    .line 439
    .local v9, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    invoke-virtual {v9}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform()V

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->getScaleX()F

    move-result v10

    .line 441
    .local v10, "scaleX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->getScaleY()F

    move-result v11

    .line 442
    .local v11, "scaleY":F
    invoke-virtual {v6, v2}, Lcom/android/launcher3/folder/FolderIcon;->setScaleX(F)V

    .line 443
    invoke-virtual {v6, v2}, Lcom/android/launcher3/folder/FolderIcon;->setScaleY(F)V

    .line 444
    invoke-virtual {v3, v6, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v12

    .line 446
    .end local p4    # "scaleRelativeToDragLayer":F
    .local v12, "scaleRelativeToDragLayer":F
    invoke-virtual {v6, v10}, Lcom/android/launcher3/folder/FolderIcon;->setScaleX(F)V

    .line 447
    invoke-virtual {v6, v11}, Lcom/android/launcher3/folder/FolderIcon;->setScaleY(F)V

    .line 448
    invoke-virtual {v9}, Lcom/android/launcher3/Workspace;->resetTransitionTransform()V

    move/from16 v21, v12

    goto :goto_0

    .line 435
    .end local v9    # "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    .end local v10    # "scaleX":F
    .end local v11    # "scaleY":F
    .end local v12    # "scaleRelativeToDragLayer":F
    .restart local p4    # "scaleRelativeToDragLayer":F
    :cond_1
    move/from16 v21, p4

    .line 451
    .end local p4    # "scaleRelativeToDragLayer":F
    .local v21, "scaleRelativeToDragLayer":F
    :goto_0
    add-int/lit8 v9, v0, 0x1

    const/4 v10, 0x4

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 452
    .local v15, "numItemsInPreview":I
    const/4 v9, 0x0

    .line 453
    .local v9, "itemAdded":Z
    const/4 v11, 0x0

    const/4 v14, 0x1

    if-nez p6, :cond_2

    if-lt v0, v10, :cond_5

    .line 454
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    iget-object v13, v6, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 455
    .local v12, "oldPreviewItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v13, v6, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v13, v7, v0, v11}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/ItemInfo;IZ)V

    .line 456
    iget-object v13, v6, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 457
    iget-object v13, v6, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-virtual {v6, v11}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 459
    iget-object v2, v6, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 460
    iget-object v2, v6, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 461
    .local v2, "newIndex":I
    if-ltz v2, :cond_3

    .line 464
    move v0, v2

    .line 467
    .end local p5    # "index":I
    .local v0, "index":I
    :cond_3
    iget-object v13, v6, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v13, v0, v14}, Lcom/android/launcher3/folder/PreviewItemManager;->hidePreviewItem(IZ)V

    .line 468
    iget-object v13, v6, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    iget-object v10, v6, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-virtual {v13, v12, v10, v7}, Lcom/android/launcher3/folder/PreviewItemManager;->onDrop(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 469
    const/4 v9, 0x1

    .line 470
    .end local v2    # "newIndex":I
    move v2, v0

    move/from16 v22, v9

    goto :goto_1

    .line 471
    .end local v0    # "index":I
    .restart local p5    # "index":I
    :cond_4
    invoke-virtual {v6, v7, v11}, Lcom/android/launcher3/folder/FolderIcon;->removeItem(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 475
    .end local v12    # "oldPreviewItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :cond_5
    move v2, v0

    move/from16 v22, v9

    .end local v9    # "itemAdded":Z
    .end local p5    # "index":I
    .local v2, "index":I
    .local v22, "itemAdded":Z
    :goto_1
    if-nez v22, :cond_6

    .line 476
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v7, v2, v14}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/ItemInfo;IZ)V

    .line 479
    :cond_6
    const/4 v0, 0x2

    new-array v13, v0, [I

    .line 480
    .local v13, "center":[I
    invoke-direct {v6, v2, v15, v13}, Lcom/android/launcher3/folder/FolderIcon;->getLocalCenterForIndex(II[I)F

    move-result v23

    .line 481
    .local v23, "scale":F
    aget v9, v13, v11

    int-to-float v9, v9

    mul-float v9, v9, v21

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, v13, v11

    .line 482
    aget v9, v13, v14

    int-to-float v9, v9

    mul-float v9, v9, v21

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, v13, v14

    .line 484
    aget v9, v13, v11

    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v10

    div-int/2addr v10, v0

    sub-int/2addr v9, v10

    aget v10, v13, v14

    .line 485
    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v11

    div-int/2addr v11, v0

    sub-int/2addr v10, v11

    .line 484
    invoke-virtual {v1, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 487
    const/4 v0, 0x4

    if-ge v2, v0, :cond_7

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    move v12, v0

    .line 489
    .local v12, "finalAlpha":F
    :goto_2
    mul-float v0, v23, v21

    .line 492
    .local v0, "finalScale":F
    iget-object v9, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v9, v9, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz v9, :cond_8

    .line 493
    iget-object v9, v6, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v9}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v9

    .line 494
    .local v9, "grid":Lcom/android/launcher3/DeviceProfile;
    iget v10, v9, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    iget v11, v9, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 495
    .local v10, "containerScale":F
    mul-float/2addr v0, v10

    move/from16 v24, v0

    goto :goto_3

    .line 492
    .end local v9    # "grid":Lcom/android/launcher3/DeviceProfile;
    .end local v10    # "containerScale":F
    :cond_8
    move/from16 v24, v0

    .line 498
    .end local v0    # "finalScale":F
    .local v24, "finalScale":F
    :goto_3
    move v0, v2

    .line 499
    .local v0, "finalIndex":I
    const/16 v16, 0x190

    sget-object v17, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v1

    move-object/from16 v25, v13

    .end local v13    # "center":[I
    .local v25, "center":[I
    move/from16 v13, v24

    move/from16 p4, v0

    move v0, v14

    .end local v0    # "finalIndex":I
    .local p4, "finalIndex":I
    move/from16 v14, v24

    move/from16 v26, v15

    .end local v15    # "numItemsInPreview":I
    .local v26, "numItemsInPreview":I
    move/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, p7

    invoke-virtual/range {v9 .. v19}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FFFILandroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 505
    iget-object v9, v6, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v9, v7}, Lcom/android/launcher3/folder/Folder;->hideItem(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 507
    if-nez v22, :cond_9

    iget-object v9, v6, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v9, v2, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->hidePreviewItem(IZ)V

    .line 509
    :cond_9
    new-instance v0, Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderNameInfos;-><init>()V

    move-object v9, v0

    .line 510
    .local v9, "nameInfos":Lcom/android/launcher3/folder/FolderNameInfos;
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->FOLDER_NAME_SUGGEST:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 511
    sget-object v10, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v11, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda5;

    move/from16 v13, p4

    .end local p4    # "finalIndex":I
    .local v13, "finalIndex":I
    move-object v0, v11

    move-object v14, v1

    .end local v1    # "to":Landroid/graphics/Rect;
    .local v14, "to":Landroid/graphics/Rect;
    move-object/from16 v1, p0

    move v15, v2

    .end local v2    # "index":I
    .local v15, "index":I
    move-object/from16 v2, p2

    move-object/from16 v16, v3

    .end local v3    # "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    .local v16, "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    move-object v3, v9

    move-object/from16 v17, v4

    .end local v4    # "animateView":Lcom/android/launcher3/dragndrop/DragView;
    .local v17, "animateView":Lcom/android/launcher3/dragndrop/DragView;
    move v4, v13

    move/from16 p4, v12

    move-object v12, v5

    .end local v12    # "finalAlpha":F
    .local p4, "finalAlpha":F
    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/folder/FolderNameInfos;ILcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v10, v11}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 517
    .end local v13    # "finalIndex":I
    .end local v14    # "to":Landroid/graphics/Rect;
    .end local v15    # "index":I
    .end local v16    # "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    .end local v17    # "animateView":Lcom/android/launcher3/dragndrop/DragView;
    .restart local v1    # "to":Landroid/graphics/Rect;
    .restart local v2    # "index":I
    .restart local v3    # "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    .restart local v4    # "animateView":Lcom/android/launcher3/dragndrop/DragView;
    .restart local v12    # "finalAlpha":F
    .local p4, "finalIndex":I
    :cond_a
    move/from16 v13, p4

    move-object v14, v1

    move v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 p4, v12

    move-object v12, v5

    .end local v1    # "to":Landroid/graphics/Rect;
    .end local v2    # "index":I
    .end local v3    # "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    .end local v4    # "animateView":Lcom/android/launcher3/dragndrop/DragView;
    .end local v12    # "finalAlpha":F
    .restart local v13    # "finalIndex":I
    .restart local v14    # "to":Landroid/graphics/Rect;
    .restart local v15    # "index":I
    .restart local v16    # "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    .restart local v17    # "animateView":Lcom/android/launcher3/dragndrop/DragView;
    .local p4, "finalAlpha":F
    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-direct {v6, v13, v7, v9, v0}, Lcom/android/launcher3/folder/FolderIcon;->showFinalView(ILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/logging/InstanceId;)V

    .line 519
    .end local v9    # "nameInfos":Lcom/android/launcher3/folder/FolderNameInfos;
    .end local v13    # "finalIndex":I
    .end local v14    # "to":Landroid/graphics/Rect;
    .end local v16    # "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    .end local v20    # "launcher":Lcom/android/launcher3/Launcher;
    .end local v22    # "itemAdded":Z
    .end local v23    # "scale":F
    .end local v24    # "finalScale":F
    .end local v25    # "center":[I
    .end local v26    # "numItemsInPreview":I
    .end local p4    # "finalAlpha":F
    :goto_4
    goto :goto_5

    .line 431
    .end local v15    # "index":I
    .end local v17    # "animateView":Lcom/android/launcher3/dragndrop/DragView;
    .end local v21    # "scaleRelativeToDragLayer":F
    .restart local v4    # "animateView":Lcom/android/launcher3/dragndrop/DragView;
    .local p4, "scaleRelativeToDragLayer":F
    .restart local p5    # "index":I
    :cond_b
    move-object/from16 v17, v4

    move-object v12, v5

    .line 520
    .end local v4    # "animateView":Lcom/android/launcher3/dragndrop/DragView;
    .restart local v17    # "animateView":Lcom/android/launcher3/dragndrop/DragView;
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 521
    if-eqz v12, :cond_c

    .line 522
    invoke-virtual {v6, v12}, Lcom/android/launcher3/folder/FolderIcon;->post(Ljava/lang/Runnable;)Z

    .line 525
    :cond_c
    move/from16 v21, p4

    move v15, v0

    .end local p4    # "scaleRelativeToDragLayer":F
    .end local p5    # "index":I
    .restart local v15    # "index":I
    .restart local v21    # "scaleRelativeToDragLayer":F
    :goto_5
    return-void
.end method

.method private setFolder(Lcom/android/launcher3/folder/Folder;)V
    .locals 0
    .param p1, "folder"    # Lcom/android/launcher3/folder/Folder;

    .line 337
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 338
    return-void
.end method

.method private showFinalView(ILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/logging/InstanceId;)V
    .locals 7
    .param p1, "finalIndex"    # I
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "nameInfos"    # Lcom/android/launcher3/folder/FolderNameInfos;
    .param p4, "instanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 529
    new-instance v6, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda4;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/folder/FolderIcon;ILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/logging/InstanceId;)V

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 535
    return-void
.end method

.method private updateDotScale(ZZZZ)V
    .locals 7
    .param p1, "wasDotted"    # Z
    .param p2, "isDotted"    # Z
    .param p3, "wasSonyBadged"    # Z
    .param p4, "isSonyBadged"    # Z

    .line 646
    if-nez p2, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 648
    .local v0, "newDotScale":F
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/folder/FolderIcon;->isBadgeStateChanged(ZZZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 649
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/folder/FolderIcon;->adjustScale(ZZZZF)V

    .line 650
    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderIcon;->animateDotScale([F)V

    goto :goto_2

    .line 652
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->cancelDotScaleAnim()V

    .line 653
    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScale:F

    .line 654
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 656
    :goto_2
    return-void
.end method

.method private updatePreviewItems(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 846
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->updatePreviewItems(Z)V

    .line 847
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 848
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 849
    return-void
.end method

.method private updateTranslation()V
    .locals 2

    .line 956
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationForReorderBounce:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationForReorderPreview:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationForMoveFromCenterAnimation:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationXForTaskbarAlignmentAnimation:F

    add-float/2addr v0, v1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 959
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationForReorderBounce:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationForReorderPreview:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationForMoveFromCenterAnimation:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 961
    return-void
.end method

.method private willAcceptItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 341
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 342
    .local v0, "itemType":I
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 345
    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 342
    :goto_0
    return v1
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p1, "dragInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 349
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->willAcceptItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addItem(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 353
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 354
    return-void
.end method

.method public animateBgShadowAndStroke()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->fadeInBackgroundShadow()V

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->animateBackgroundStroke()V

    .line 249
    return-void
.end method

.method public varargs animateDotScale([F)V
    .locals 2
    .param p1, "dotScales"    # [F

    .line 665
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->cancelDotScaleAnim()V

    .line 666
    sget-object v0, Lcom/android/launcher3/folder/FolderIcon;->DOT_SCALE_PROPERTY:Landroid/util/Property;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScaleAnim:Landroid/animation/Animator;

    .line 667
    new-instance v1, Lcom/android/launcher3/folder/FolderIcon$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/FolderIcon$3;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 673
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScaleAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 674
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .line 920
    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 921
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 922
    return-void
.end method

.method public clearLeaveBehindIfExists()V
    .locals 2

    .line 934
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->container:I

    const/16 v1, -0x66

    if-ne v0, v1, :cond_0

    .line 935
    return-void

    .line 937
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;

    if-eqz v0, :cond_1

    .line 938
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;

    invoke-interface {v0, p0}, Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;->clearFolderLeaveBehind(Lcom/android/launcher3/folder/FolderIcon;)V

    .line 940
    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 761
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 763
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackgroundIsVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewItemManager;->recomputePreviewDrawingParams()V

    .line 767
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->drawingDelegatedToWorkspace()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 768
    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->drawingDelegatedToAllApps()Z

    move-result v0

    if-nez v0, :cond_2

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackground(Landroid/graphics/Canvas;)V

    .line 772
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mAnimating:Z

    if-nez v0, :cond_3

    return-void

    .line 774
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->draw(Landroid/graphics/Canvas;)V

    .line 776
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->drawingDelegatedToWorkspace()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 777
    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->drawingDelegatedToAllApps()Z

    move-result v0

    if-nez v0, :cond_5

    .line 778
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    .line 781
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->drawDot(Landroid/graphics/Canvas;)V

    .line 782
    return-void
.end method

.method public drawDot(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 785
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mForceHideDot:Z

    if-eqz v0, :cond_0

    .line 786
    return-void

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mSonyFolderBadgeInfo:Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    if-nez v0, :cond_1

    .line 789
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->loadFolderBadgeInfoFromFolderInfo()V

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mSonyFolderBadgeInfo:Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    if-eqz v0, :cond_3

    .line 792
    invoke-virtual {v0}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 794
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mSonyFolderBadgeInfo:Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    invoke-virtual {v0}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->getTotalCountAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeText:Ljava/lang/String;

    .line 795
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget-object v0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    .line 797
    .local v0, "iconBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-static {p0, v2, v0}, Lcom/android/launcher3/Utilities;->setRectToViewCenter(Landroid/view/View;ILandroid/graphics/Rect;)V

    .line 799
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 800
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 801
    .local v2, "iconScale":F
    invoke-static {v0, v2}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 804
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotScale:F

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/PreviewBackground;->getScaleProgress()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    .line 805
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/PreviewBackground;->getDotColor()I

    move-result v3

    iput v3, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->dotColor:I

    .line 806
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeText:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 807
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mSonyBadgeRenderer:Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-virtual {v3, p1, v4, v1}, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;Ljava/lang/String;)V

    goto :goto_0

    .line 809
    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-virtual {v1, p1, v3}, Lcom/android/launcher3/icons/DotRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)V

    .line 812
    .end local v0    # "iconBounds":Landroid/graphics/Rect;
    .end local v2    # "iconScale":F
    :cond_6
    :goto_0
    return-void
.end method

.method public drawLeaveBehindIfExists()V
    .locals 2

    .line 943
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->container:I

    const/16 v1, -0x66

    if-ne v0, v1, :cond_0

    .line 944
    return-void

    .line 946
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;

    if-eqz v0, :cond_1

    .line 947
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;

    invoke-interface {v0, p0}, Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;->drawFolderLeaveBehindForIcon(Lcom/android/launcher3/folder/FolderIcon;)V

    .line 949
    :cond_1
    return-void
.end method

.method public getAccessiblityTitle(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 1034
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1035
    .local v0, "size":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    .line 1036
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/launcher3/R$string;->folder_name_format_exact:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1038
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/launcher3/R$string;->folder_name_format_overflow:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 1039
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    .line 1038
    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBackgroundStrokeWidth()F
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getFolder()Lcom/android/launcher3/folder/Folder;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    return-object v0
.end method

.method public getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    return-object v0
.end method

.method public getFolderName()Lcom/android/launcher3/BubbleTextView;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    return-object v0
.end method

.method public getIconVisible()Z
    .locals 1

    .line 748
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackgroundIsVisible:Z

    return v0
.end method

.method public getLayoutRule()Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    return-object v0
.end method

.method public getPreviewBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 256
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewItemManager;->recomputePreviewDrawingParams()V

    .line 257
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->getBounds(Landroid/graphics/Rect;)V

    .line 259
    const/high16 v0, 0x3f900000    # 1.125f

    invoke-static {p1, v0}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 260
    return-void
.end method

.method public getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    return-object v0
.end method

.method public getPreviewItemsOnPage(I)Ljava/util/List;
    .locals 2
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 830
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->previewItemsForPage(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getReorderBounceOffset(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "offset"    # Landroid/graphics/PointF;

    .line 969
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationForReorderBounce:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 970
    return-void
.end method

.method public getReorderBounceScale()F
    .locals 1

    .line 1013
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mScaleForReorderBounce:F

    return v0
.end method

.method public getReorderPreviewOffset(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "offset"    # Landroid/graphics/PointF;

    .line 1003
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationForReorderPreview:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1004
    return-void
.end method

.method public getTextVisible()Z
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTranslationXForTaskbarAlignmentAnimation()F
    .locals 1

    .line 984
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationXForTaskbarAlignmentAnimation:F

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 1017
    return-object p0
.end method

.method public getViewType()I
    .locals 1

    .line 1022
    const/4 v0, 0x0

    return v0
.end method

.method public getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1027
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewBounds(Landroid/graphics/Rect;)V

    .line 1028
    return-void
.end method

.method public hasDot()Z
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mSonyFolderBadgeInfo:Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    if-eqz v0, :cond_2

    .line 717
    invoke-virtual {v0}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->hasBadge()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 716
    :goto_0
    return v0
.end method

.method synthetic lambda$onDrop$0$com-android-launcher3-folder-FolderIcon(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/folder/FolderNameInfos;ILcom/android/launcher3/model/data/ItemInfo;)V
    .locals 3
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "nameInfos"    # Lcom/android/launcher3/folder/FolderNameInfos;
    .param p3, "finalIndex"    # I
    .param p4, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 512
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->folderNameProvider:Lcom/android/launcher3/folder/FolderNameProvider;

    .line 513
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 512
    invoke-virtual {v0, v1, v2, p2}, Lcom/android/launcher3/folder/FolderNameProvider;->getSuggestedFolderName(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderNameInfos;)V

    .line 514
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-direct {p0, p3, p4, p2, v0}, Lcom/android/launcher3/folder/FolderIcon;->showFinalView(ILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/logging/InstanceId;)V

    .line 515
    return-void
.end method

.method synthetic lambda$showFinalView$1$com-android-launcher3-folder-FolderIcon(ILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/logging/InstanceId;)V
    .locals 2
    .param p1, "finalIndex"    # I
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "nameInfos"    # Lcom/android/launcher3/folder/FolderNameInfos;
    .param p4, "instanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 530
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->hidePreviewItem(IZ)V

    .line 531
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/folder/Folder;->showItem(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 532
    invoke-virtual {p0, p3, p4}, Lcom/android/launcher3/folder/FolderIcon;->setLabelSuggestion(Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/logging/InstanceId;)V

    .line 533
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 534
    return-void
.end method

.method public onAdd(Lcom/android/launcher3/model/data/ItemInfo;I)V
    .locals 5
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "rank"    # I

    .line 860
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V

    .line 861
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v0

    .line 862
    .local v0, "wasDotted":Z
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mSonyFolderBadgeInfo:Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    invoke-virtual {v1}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->hasBadge()Z

    move-result v1

    .line 863
    .local v1, "wasSonyBadged":Z
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3, p1}, Lcom/android/launcher3/views/ActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/dot/FolderDotInfo;->addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V

    .line 864
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mSonyFolderBadgeInfo:Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3, p1}, Lcom/android/launcher3/views/ActivityContext;->getSonyBadgeInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->addSonyBadgeInfo(Lcom/sonymobile/launcher/badge/SonyBadgeInfo;)V

    .line 865
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v2

    .line 866
    .local v2, "isDotted":Z
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mSonyFolderBadgeInfo:Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    invoke-virtual {v3}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->hasBadge()Z

    move-result v3

    .line 867
    .local v3, "isSonyBadged":Z
    invoke-direct {p0, v0, v2, v1, v3}, Lcom/android/launcher3/folder/FolderIcon;->updateDotScale(ZZZZ)V

    .line 868
    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v4, v4, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/folder/FolderIcon;->getAccessiblityTitle(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/folder/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 869
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 870
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->requestLayout()V

    .line 871
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 6
    .param p1, "dragInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 361
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->willAcceptItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 363
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 366
    .local v1, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 368
    .local v2, "cl":Lcom/android/launcher3/CellLayout;
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v4, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/launcher3/folder/PreviewBackground;->animateToAccept(Lcom/android/launcher3/CellLayout;II)V

    .line 370
    .end local v1    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .end local v2    # "cl":Lcom/android/launcher3/CellLayout;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 371
    instance-of v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    if-nez v1, :cond_2

    instance-of v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-nez v1, :cond_2

    instance-of v1, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v1, :cond_3

    .line 375
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 377
    :cond_3
    return-void

    .line 361
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    :goto_0
    return-void
.end method

.method public onDragExit()V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->animateToRest()V

    .line 412
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 413
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 1
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "itemReturnedOnFailedDrop"    # Z

    .line 582
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;ZLjava/lang/Runnable;)V

    .line 583
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;ZLjava/lang/Runnable;)V
    .locals 9
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "itemReturnedOnFailedDrop"    # Z
    .param p3, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .line 588
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->container:I

    const/16 v1, -0x66

    if-eq v0, v1, :cond_0

    .line 591
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/model/data/WorkspaceItemFactory;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    .local v0, "item":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_0

    .line 592
    .end local v0    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v0, v0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;

    if-eqz v0, :cond_1

    .line 594
    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .restart local v0    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_0

    .line 596
    .end local v0    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_1
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 598
    .restart local v0    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->notifyDrop()V

    .line 599
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 600
    if-eqz p2, :cond_2

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    move v6, v1

    .line 599
    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;FIZLjava/lang/Runnable;)V

    .line 603
    return-void
.end method

.method public onFolderClose(I)V
    .locals 1
    .param p1, "currentPage"    # I

    .line 952
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->onFolderClose(I)V

    .line 953
    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .line 840
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V

    .line 841
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 842
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->requestLayout()V

    .line 843
    return-void
.end method

.method public onRemove(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 875
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V

    .line 876
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v0

    .line 877
    .local v0, "wasDotted":Z
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mSonyFolderBadgeInfo:Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    invoke-virtual {v1}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->hasBadge()Z

    move-result v1

    .line 878
    .local v1, "wasSonyBadged":Z
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/dot/FolderDotInfo;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 879
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3}, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mSonyFolderBadgeInfo:Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    .line 880
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda3;

    invoke-direct {v4, v3}, Lcom/android/launcher3/folder/FolderIcon$$ExternalSyntheticLambda3;-><init>(Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 881
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v2

    .line 882
    .local v2, "isDotted":Z
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mSonyFolderBadgeInfo:Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    invoke-virtual {v3}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->hasBadge()Z

    move-result v3

    .line 883
    .local v3, "isSonyBadged":Z
    invoke-direct {p0, v0, v2, v1, v3}, Lcom/android/launcher3/folder/FolderIcon;->updateDotScale(ZZZZ)V

    .line 884
    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v4, v4, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/folder/FolderIcon;->getAccessiblityTitle(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/folder/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 885
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 886
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->requestLayout()V

    .line 887
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 890
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->getAccessiblityTitle(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 892
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 896
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 897
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->shouldIgnoreTouchDown(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    const/4 v0, 0x0

    return v0

    .line 903
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 904
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 906
    const/4 v0, 0x1

    return v0
.end method

.method public performCreateAnimation(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;F)V
    .locals 4
    .param p1, "destInfo"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "destView"    # Landroid/view/View;
    .param p3, "srcInfo"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p4, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p5, "dstRect"    # Landroid/graphics/Rect;
    .param p6, "scaleRelativeToDragLayer"    # F

    .line 392
    iget-object v0, p4, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 393
    .local v0, "srcView":Lcom/android/launcher3/dragndrop/DragView;
    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/FolderIcon;->prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 397
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/folder/PreviewItemManager;->createFirstItemAnimation(ZLjava/lang/Runnable;)Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    move-result-object v1

    .line 398
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->start()V

    .line 401
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;F)V

    .line 402
    return-void
.end method

.method public performDestroyAnimation(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .line 406
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->createFirstItemAnimation(ZLjava/lang/Runnable;)Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->start()V

    .line 408
    return-void
.end method

.method public prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "destView"    # Landroid/view/View;

    .line 386
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public removeItem(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "animate"    # Z

    .line 357
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 358
    return-void
.end method

.method public removeListeners()V
    .locals 2

    .line 925
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/model/data/FolderInfo;->removeListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    .line 926
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/data/FolderInfo;->removeListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    .line 927
    return-void
.end method

.method public resetFolder()V
    .locals 2

    .line 311
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->removeListeners()V

    .line 312
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 313
    .local v0, "folder":Lcom/android/launcher3/folder/Folder;
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setDragController(Lcom/android/launcher3/dragndrop/DragController;)V

    .line 314
    invoke-virtual {v0, p0}, Lcom/android/launcher3/folder/Folder;->setFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V

    .line 315
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->bind(Lcom/android/launcher3/model/data/FolderInfo;)V

    .line 316
    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->setFolder(Lcom/android/launcher3/folder/Folder;)V

    .line 317
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderIcon;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 318
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    .line 319
    return-void
.end method

.method public setDotInfo(Lcom/android/launcher3/dot/FolderDotInfo;)V
    .locals 4
    .param p1, "dotInfo"    # Lcom/android/launcher3/dot/FolderDotInfo;

    .line 606
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v0

    .line 607
    .local v0, "wasDotted":Z
    invoke-virtual {p1}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v1

    .line 608
    .local v1, "isDotted":Z
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mSonyFolderBadgeInfo:Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    invoke-virtual {v2}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->hasBadge()Z

    move-result v2

    .line 609
    .local v2, "wasSonyBadged":Z
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mSonyFolderBadgeInfo:Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    invoke-virtual {v3}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->hasBadge()Z

    move-result v3

    .line 610
    .local v3, "isSonyBadged":Z
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/launcher3/folder/FolderIcon;->updateDotScale(ZZZZ)V

    .line 611
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    .line 612
    return-void
.end method

.method public setFolderBackground(Lcom/android/launcher3/folder/PreviewBackground;)V
    .locals 0
    .param p1, "bg"    # Lcom/android/launcher3/folder/PreviewBackground;

    .line 737
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 738
    invoke-virtual {p1, p0}, Lcom/android/launcher3/folder/PreviewBackground;->setInvalidateDelegate(Landroid/view/View;)V

    .line 739
    return-void
.end method

.method public setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/Launcher;)V
    .locals 7
    .param p1, "folderInfo"    # Lcom/android/launcher3/model/data/FolderInfo;
    .param p2, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-ne v0, p1, :cond_0

    .line 268
    return-void

    .line 271
    :cond_0
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 273
    .local v0, "grid":Lcom/android/launcher3/DeviceProfile;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderIcon;->setClipToPadding(Z)V

    .line 275
    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    .line 276
    invoke-static {v3}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    .line 278
    .local v2, "topPadding":I
    invoke-virtual {p0, v1, v2, v1, v1}, Lcom/android/launcher3/folder/FolderIcon;->setPadding(IIII)V

    .line 280
    sget v3, Lcom/android/launcher3/R$id;->folder_icon_name:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    iput-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    .line 281
    iget-object v4, p1, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 283
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 284
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 287
    sget-object v4, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/folder/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    .line 289
    iput-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 290
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/DeviceProfile;->mDotRendererWorkSpace:Lcom/android/launcher3/icons/DotRenderer;

    iput-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    .line 291
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/DeviceProfile;->mSonyBadgeRenderer:Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;

    iput-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mSonyBadgeRenderer:Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;

    .line 292
    iget-object v4, p1, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/folder/FolderIcon;->getAccessiblityTitle(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/folder/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 293
    invoke-static {p2}, Lcom/android/launcher3/folder/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher3/folder/Folder;

    move-result-object v4

    .line 294
    .local v4, "folder":Lcom/android/launcher3/folder/Folder;
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/folder/Folder;->setDragController(Lcom/android/launcher3/dragndrop/DragController;)V

    .line 295
    invoke-virtual {v4, p0}, Lcom/android/launcher3/folder/Folder;->setFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V

    .line 296
    invoke-virtual {v4, p1}, Lcom/android/launcher3/folder/Folder;->bind(Lcom/android/launcher3/model/data/FolderInfo;)V

    .line 297
    invoke-direct {p0, v4}, Lcom/android/launcher3/folder/FolderIcon;->setFolder(Lcom/android/launcher3/folder/Folder;)V

    .line 298
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/FolderIcon;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 299
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->loadFolderBadgeInfoFromFolderInfo()V

    .line 301
    new-instance v5, Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v5, v6}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iput-object v5, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    .line 302
    invoke-virtual {v5, p1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    .line 303
    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V

    .line 305
    invoke-virtual {p1, p0}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    .line 307
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getFocusHandler()Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderIcon;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 308
    return-void
.end method

.method public setForceHideDot(Z)V
    .locals 1
    .param p1, "forceHideDot"    # Z

    .line 629
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mForceHideDot:Z

    if-ne v0, p1, :cond_0

    .line 630
    return-void

    .line 632
    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mForceHideDot:Z

    .line 634
    if-eqz p1, :cond_1

    .line 635
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    goto :goto_0

    .line 636
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->hasDot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 637
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->animateDotScale([F)V

    .line 639
    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setIconVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 743
    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackgroundIsVisible:Z

    .line 744
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 745
    return-void
.end method

.method public setLabelSuggestion(Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/logging/InstanceId;)V
    .locals 4
    .param p1, "nameInfos"    # Lcom/android/launcher3/folder/FolderNameInfos;
    .param p2, "instanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 541
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->FOLDER_NAME_SUGGEST:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->getLabelState()Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->UNLABELED:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 545
    return-void

    .line 547
    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderNameInfos;->hasSuggestions()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 554
    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderNameInfos;->hasPrimary()Z

    move-result v0

    if-nez v0, :cond_3

    .line 555
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 556
    invoke-interface {v0, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    .line 557
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_AUTO_LABELING_SKIPPED_EMPTY_PRIMARY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 558
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 559
    return-void

    .line 561
    :cond_3
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderNameInfos;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 562
    .local v0, "newTitle":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/FolderInfo;->getFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FromState;

    move-result-object v1

    .line 564
    .local v1, "fromState":Lcom/android/launcher3/logger/LauncherAtom$FromState;
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v3, v3, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/model/data/FolderInfo;->setTitle(Ljava/lang/CharSequence;Lcom/android/launcher3/model/ModelWriter;)V

    .line 565
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/FolderIcon;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 569
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    .line 570
    invoke-interface {v2, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    .line 571
    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    .line 572
    invoke-interface {v2, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withFromState(Lcom/android/launcher3/logger/LauncherAtom$FromState;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION0:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 573
    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withToState(Lcom/android/launcher3/logger/LauncherAtom$ToState;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    .line 576
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withEditText(Ljava/lang/String;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_AUTO_LABELED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 577
    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 578
    return-void

    .line 548
    .end local v0    # "newTitle":Ljava/lang/CharSequence;
    .end local v1    # "fromState":Lcom/android/launcher3/logger/LauncherAtom$FromState;
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 549
    invoke-interface {v0, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    .line 550
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_AUTO_LABELING_SKIPPED_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 551
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 552
    return-void
.end method

.method public setReorderBounceOffset(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 964
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationForReorderBounce:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 965
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->updateTranslation()V

    .line 966
    return-void
.end method

.method public setReorderBounceScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 1007
    iput p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mScaleForReorderBounce:F

    .line 1008
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1009
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1010
    return-void
.end method

.method public setReorderPreviewOffset(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 997
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationForReorderPreview:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 998
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->updateTranslation()V

    .line 999
    return-void
.end method

.method public setSonyBadgeInfo(Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;)V
    .locals 4
    .param p1, "sonyBadgeInfo"    # Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    .line 615
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v0

    .line 616
    .local v0, "wasDotted":Z
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotInfo:Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/dot/FolderDotInfo;->hasDot()Z

    move-result v1

    .line 617
    .local v1, "isDotted":Z
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mSonyFolderBadgeInfo:Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    invoke-virtual {v2}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->hasBadge()Z

    move-result v2

    .line 618
    .local v2, "wasSonyBadged":Z
    invoke-virtual {p1}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->hasBadge()Z

    move-result v3

    .line 619
    .local v3, "isSonyBadged":Z
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mSonyFolderBadgeInfo:Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    .line 620
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/launcher3/folder/FolderIcon;->updateDotScale(ZZZZ)V

    .line 621
    return-void
.end method

.method public setTextVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 815
    if-eqz p1, :cond_0

    .line 816
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    goto :goto_0

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    .line 820
    :goto_0
    return-void
.end method

.method public setTranslationForMoveFromCenterAnimation(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 991
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationForMoveFromCenterAnimation:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 992
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->updateTranslation()V

    .line 993
    return-void
.end method

.method public setTranslationForTaskbarAlignmentAnimation(F)V
    .locals 0
    .param p1, "translationX"    # F

    .line 976
    iput p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTranslationXForTaskbarAlignmentAnimation:F

    .line 977
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->updateTranslation()V

    .line 978
    return-void
.end method

.method protected shouldIgnoreTouchDown(FF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 913
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTouchArea:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 914
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 913
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 915
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTouchArea:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public updatePreviewItems(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 855
    .local p1, "itemCheck":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->updatePreviewItems(Ljava/util/function/Predicate;)V

    .line 856
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 835
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
