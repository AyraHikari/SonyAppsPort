.class Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;
.super Ljava/lang/Object;
.source "FloatingIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/views/FloatingIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconLoadResult"
.end annotation


# instance fields
.field badge:Landroid/graphics/drawable/Drawable;

.field btvDrawable:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field drawable:Landroid/graphics/drawable/Drawable;

.field iconOffset:I

.field isIconLoaded:Z

.field final isThemed:Z

.field final itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field onIconLoaded:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .locals 0
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "isThemed"    # Z

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 668
    iput-boolean p2, p0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isThemed:Z

    .line 669
    return-void
.end method
