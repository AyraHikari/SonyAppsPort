.class public abstract Lcom/android/launcher3/LauncherState$PageTranslationProvider;
.super Ljava/lang/Object;
.source "LauncherState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PageTranslationProvider"
.end annotation


# instance fields
.field public final interpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Lcom/android/launcher3/LauncherState$PageTranslationProvider;->interpolator:Landroid/view/animation/Interpolator;

    .line 361
    return-void
.end method


# virtual methods
.method public abstract getPageTranslation(I)F
.end method
