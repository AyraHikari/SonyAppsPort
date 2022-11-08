.class synthetic Lcom/android/launcher3/search/StringMatcherUtility$1;
.super Ljava/lang/Object;
.source "StringMatcherUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/search/StringMatcherUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$java$lang$Character$UnicodeScript:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 154
    invoke-static {}, Ljava/lang/Character$UnicodeScript;->values()[Ljava/lang/Character$UnicodeScript;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/search/StringMatcherUtility$1;->$SwitchMap$java$lang$Character$UnicodeScript:[I

    :try_start_0
    sget-object v1, Ljava/lang/Character$UnicodeScript;->HAN:Ljava/lang/Character$UnicodeScript;

    invoke-virtual {v1}, Ljava/lang/Character$UnicodeScript;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
