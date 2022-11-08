.class final Lcom/android/launcher3/logger/LauncherAtom$ToState$ToStateVerifier;
.super Ljava/lang/Object;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$ToState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ToStateVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1046
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState$ToStateVerifier;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$ToState$ToStateVerifier;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState$ToStateVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 1
    .param p1, "number"    # I

    .line 1049
    invoke-static {p1}, Lcom/android/launcher3/logger/LauncherAtom$ToState;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$ToState;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
