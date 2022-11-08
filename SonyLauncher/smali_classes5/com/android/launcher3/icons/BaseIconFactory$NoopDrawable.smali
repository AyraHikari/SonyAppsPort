.class Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "BaseIconFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/BaseIconFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoopDrawable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 508
    invoke-direct {p0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    .line 511
    const/4 v0, 0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 516
    const/4 v0, 0x1

    return v0
.end method
