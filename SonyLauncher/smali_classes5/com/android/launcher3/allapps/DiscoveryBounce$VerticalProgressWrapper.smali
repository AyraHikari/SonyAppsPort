.class public Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;
.super Ljava/lang/Object;
.source "DiscoveryBounce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/DiscoveryBounce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerticalProgressWrapper"
.end annotation


# instance fields
.field private final mLimit:F

.field private final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "limit"    # F

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;->mView:Landroid/view/View;

    .line 152
    iput p2, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;->mLimit:F

    .line 153
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;FLcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;-><init>(Landroid/view/View;F)V

    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;->mLimit:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method

.method public setProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;->mView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;->mLimit:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, p1, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 161
    return-void
.end method
