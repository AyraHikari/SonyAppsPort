.class final Lcom/android/launcher3/logger/LauncherAtom$Attribute$AttributeVerifier;
.super Ljava/lang/Object;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AttributeVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 541
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$Attribute$AttributeVerifier;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$Attribute$AttributeVerifier;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$Attribute$AttributeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 1
    .param p1, "number"    # I

    .line 544
    invoke-static {p1}, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
