.class public final Lcom/android/launcher3/widget/WidgetSections$WidgetSection;
.super Ljava/lang/Object;
.source "WidgetSections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/WidgetSections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WidgetSection"
.end annotation


# instance fields
.field public final mCategory:I

.field public final mSectionDrawable:I

.field public final mSectionTitle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    sget-object v0, Lcom/android/launcher3/R$styleable;->WidgetSections:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 129
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/android/launcher3/R$styleable;->WidgetSections_category:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/WidgetSections$WidgetSection;->mCategory:I

    .line 130
    sget v1, Lcom/android/launcher3/R$styleable;->WidgetSections_sectionTitle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/WidgetSections$WidgetSection;->mSectionTitle:I

    .line 131
    sget v1, Lcom/android/launcher3/R$styleable;->WidgetSections_sectionDrawable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/WidgetSections$WidgetSection;->mSectionDrawable:I

    .line 132
    return-void
.end method
