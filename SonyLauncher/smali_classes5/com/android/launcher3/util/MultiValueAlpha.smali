.class public Lcom/android/launcher3/util/MultiValueAlpha;
.super Ljava/lang/Object;
.source "MultiValueAlpha.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;
    }
.end annotation


# static fields
.field public static final VALUE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMyProperties:[Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

.field private mUpdateVisibility:Z

.field private mValidMask:I

.field private final mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMyProperties(Lcom/android/launcher3/util/MultiValueAlpha;)[Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiValueAlpha;->mMyProperties:[Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateVisibility(Lcom/android/launcher3/util/MultiValueAlpha;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/util/MultiValueAlpha;->mUpdateVisibility:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmValidMask(Lcom/android/launcher3/util/MultiValueAlpha;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiValueAlpha;->mValidMask:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmView(Lcom/android/launcher3/util/MultiValueAlpha;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiValueAlpha;->mView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmValidMask(Lcom/android/launcher3/util/MultiValueAlpha;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/MultiValueAlpha;->mValidMask:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/android/launcher3/util/MultiValueAlpha$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/util/MultiValueAlpha;->VALUE:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "size"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/launcher3/util/MultiValueAlpha;->mView:Landroid/view/View;

    .line 57
    new-array v0, p2, [Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    iput-object v0, p0, Lcom/android/launcher3/util/MultiValueAlpha;->mMyProperties:[Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/MultiValueAlpha;->mValidMask:I

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 61
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    .line 62
    .local v1, "myMask":I
    iget v2, p0, Lcom/android/launcher3/util/MultiValueAlpha;->mValidMask:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/launcher3/util/MultiValueAlpha;->mValidMask:I

    .line 63
    iget-object v2, p0, Lcom/android/launcher3/util/MultiValueAlpha;->mMyProperties:[Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    new-instance v3, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;-><init>(Lcom/android/launcher3/util/MultiValueAlpha;I)V

    aput-object v3, v2, v0

    .line 60
    .end local v1    # "myMask":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;
    .locals 1
    .param p1, "index"    # I

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/util/MultiValueAlpha;->mMyProperties:[Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public setUpdateVisibility(Z)V
    .locals 0
    .param p1, "updateVisibility"    # Z

    .line 78
    iput-boolean p1, p0, Lcom/android/launcher3/util/MultiValueAlpha;->mUpdateVisibility:Z

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/util/MultiValueAlpha;->mMyProperties:[Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
