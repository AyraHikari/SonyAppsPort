.class Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$1;
.super Ljava/lang/Object;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/google/protobuf/Internal$ListAdapter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
        "Ljava/lang/Integer;",
        "Lcom/android/launcher3/logger/LauncherAtom$Attribute;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Integer;)Lcom/android/launcher3/logger/LauncherAtom$Attribute;
    .locals 2
    .param p1, "from"    # Ljava/lang/Integer;

    .line 1896
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    move-result-object v0

    .line 1897
    .local v0, "result":Lcom/android/launcher3/logger/LauncherAtom$Attribute;
    if-nez v0, :cond_0

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->UNKNOWN:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1893
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$1;->convert(Ljava/lang/Integer;)Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    move-result-object p1

    return-object p1
.end method
