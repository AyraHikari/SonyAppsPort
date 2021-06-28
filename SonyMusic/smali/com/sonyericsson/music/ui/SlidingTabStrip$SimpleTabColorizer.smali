.class Lcom/sonyericsson/music/ui/SlidingTabStrip$SimpleTabColorizer;
.super Ljava/lang/Object;
.source "SlidingTabStrip.java"

# interfaces
.implements Lcom/sonyericsson/music/ui/SlidingTabLayout$TabColorizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ui/SlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleTabColorizer"
.end annotation


# instance fields
.field private mDividerColors:[I

.field private mIndicatorColors:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/ui/SlidingTabStrip$1;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/SlidingTabStrip$SimpleTabColorizer;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDividerColor(I)I
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip$SimpleTabColorizer;->mDividerColors:[I

    array-length v1, v0

    rem-int/2addr p1, v1

    aget p1, v0, p1

    return p1
.end method

.method public final getIndicatorColor(I)I
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip$SimpleTabColorizer;->mIndicatorColors:[I

    array-length v1, v0

    rem-int/2addr p1, v1

    aget p1, v0, p1

    return p1
.end method

.method varargs setDividerColors([I)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip$SimpleTabColorizer;->mDividerColors:[I

    return-void
.end method

.method varargs setIndicatorColors([I)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/sonyericsson/music/ui/SlidingTabStrip$SimpleTabColorizer;->mIndicatorColors:[I

    return-void
.end method
