.class Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;
.super Ljava/lang/Object;
.source "PlayPauseDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ui/PlayPauseDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Point3D"
.end annotation


# instance fields
.field x:F

.field y:F

.field z:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/ui/PlayPauseDrawable$1;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;-><init>()V

    return-void
.end method


# virtual methods
.method set(FFF)V
    .locals 0

    .line 172
    iput p1, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->x:F

    .line 173
    iput p2, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->y:F

    .line 174
    iput p3, p0, Lcom/sonyericsson/music/ui/PlayPauseDrawable$Point3D;->z:F

    return-void
.end method
