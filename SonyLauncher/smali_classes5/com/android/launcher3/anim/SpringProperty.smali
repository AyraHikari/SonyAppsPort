.class public Lcom/android/launcher3/anim/SpringProperty;
.super Ljava/lang/Object;
.source "SpringProperty.java"


# static fields
.field public static final DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

.field public static final FLAG_CAN_SPRING_ON_END:I = 0x1

.field public static final FLAG_CAN_SPRING_ON_START:I = 0x2


# instance fields
.field public final flags:I

.field mDampingRatio:F

.field mStiffness:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/android/launcher3/anim/SpringProperty;

    invoke-direct {v0}, Lcom/android/launcher3/anim/SpringProperty;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/anim/SpringProperty;-><init>(I)V

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/launcher3/anim/SpringProperty;->mDampingRatio:F

    .line 35
    const v0, 0x44bb8000    # 1500.0f

    iput v0, p0, Lcom/android/launcher3/anim/SpringProperty;->mStiffness:F

    .line 42
    iput p1, p0, Lcom/android/launcher3/anim/SpringProperty;->flags:I

    .line 43
    return-void
.end method


# virtual methods
.method public setDampingRatio(F)Lcom/android/launcher3/anim/SpringProperty;
    .locals 0
    .param p1, "dampingRatio"    # F

    .line 46
    iput p1, p0, Lcom/android/launcher3/anim/SpringProperty;->mDampingRatio:F

    .line 47
    return-object p0
.end method

.method public setStiffness(F)Lcom/android/launcher3/anim/SpringProperty;
    .locals 0
    .param p1, "stiffness"    # F

    .line 51
    iput p1, p0, Lcom/android/launcher3/anim/SpringProperty;->mStiffness:F

    .line 52
    return-object p0
.end method
