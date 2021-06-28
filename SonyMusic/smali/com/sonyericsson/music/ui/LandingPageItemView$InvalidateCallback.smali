.class Lcom/sonyericsson/music/ui/LandingPageItemView$InvalidateCallback;
.super Ljava/lang/Object;
.source "LandingPageItemView.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ui/LandingPageItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/ui/LandingPageItemView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/music/ui/LandingPageItemView;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView$InvalidateCallback;->this$0:Lcom/sonyericsson/music/ui/LandingPageItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/ui/LandingPageItemView;Lcom/sonyericsson/music/ui/LandingPageItemView$1;)V
    .locals 0

    .line 582
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/LandingPageItemView$InvalidateCallback;-><init>(Lcom/sonyericsson/music/ui/LandingPageItemView;)V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 587
    iget-object p1, p0, Lcom/sonyericsson/music/ui/LandingPageItemView$InvalidateCallback;->this$0:Lcom/sonyericsson/music/ui/LandingPageItemView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method
