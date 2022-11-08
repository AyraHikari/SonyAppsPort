.class public Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
.super Ljava/lang/Object;
.source "LauncherState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaleAndTranslation"
.end annotation


# instance fields
.field public scale:F

.field public translationX:F

.field public translationY:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "translationX"    # F
    .param p3, "translationY"    # F

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput p1, p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    .line 376
    iput p2, p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->translationX:F

    .line 377
    iput p3, p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->translationY:F

    .line 378
    return-void
.end method
