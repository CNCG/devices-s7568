.class public Lcom/sec/android/touchwiz/widget/TwScrollView;
.super Landroid/widget/FrameLayout;
.source "TwScrollView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static DEBUG_BOUNCE:Z = false

.field static DEBUG_SCROLL:Z = false

.field static DEBUG_VELOCITY_TRACKER_TRACE:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "TwScrollView"


# instance fields
.field private mActivePointerId:I

.field mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

.field private final mBounceEnabled:Z

.field mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field private mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->DEBUG_BOUNCE:Z

    .line 74
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->DEBUG_SCROLL:Z

    .line 76
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->DEBUG_VELOCITY_TRACKER_TRACE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 172
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 176
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    .line 86
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 103
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsLayoutDirty:Z

    .line 110
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 117
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 134
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    .line 150
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 157
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 159
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 177
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initScrollView()V

    .line 179
    sget-object v2, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 182
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setFillViewport(Z)V

    .line 185
    const/16 v2, 0x2d

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setOverScrollMode(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    return-void

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 189
    const-string v2, "TwScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException occured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 318
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 319
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 321
    .local v1, childHeight:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 323
    .end local v1           #childHeight:I
    :cond_0
    return v2
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1867
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 1875
    :cond_0
    const/4 p1, 0x0

    .line 1884
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 1877
    .restart local p1
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 1882
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1278
    if-eqz p1, :cond_0

    .line 1279
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1280
    invoke-virtual {p0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollBy(II)V

    .line 1285
    :cond_0
    :goto_0
    return-void

    .line 1282
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    .prologue
    .line 1750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 1752
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->recycleVelocityTracker()V

    .line 1754
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v0, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 1756
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 1759
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 1760
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1761
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1763
    :cond_1
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 1017
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1018
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1027
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 1029
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1030
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 1031
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1032
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1033
    .local v9, viewTop:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1035
    .local v6, viewBottom:I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 1041
    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    .line 1043
    .local v8, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 1045
    move-object v1, v5

    .line 1046
    move v3, v8

    .line 1030
    .end local v8           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1041
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 1048
    .restart local v8       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v7, 0x1

    .line 1052
    .local v7, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 1053
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 1059
    move-object v1, v5

    goto :goto_2

    .line 1048
    .end local v7           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 1062
    .restart local v7       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v8, :cond_7

    .line 1067
    move-object v1, v5

    .line 1068
    const/4 v3, 0x1

    goto :goto_2

    .line 1069
    :cond_7
    if-eqz v7, :cond_0

    .line 1074
    move-object v1, v5

    goto :goto_2

    .line 1081
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewBottom:I
    .end local v7           #viewIsCloserToBoundary:Z
    .end local v8           #viewIsFullyContained:Z
    .end local v9           #viewTop:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "topFocus"
    .parameter "top"
    .parameter "preferredFocusable"

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getVerticalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 989
    .local v1, fadingEdgeLength:I
    add-int v2, p2, v1

    .line 990
    .local v2, topWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v0, v3, v1

    .line 992
    .local v0, bottomWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 997
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    invoke-direct {p0, p1, v2, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 956
    const/4 v1, 0x0

    .line 957
    .local v1, scrollRange:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 958
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 959
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 962
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return v1
.end method

.method private inChild(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 457
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 458
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    .line 459
    .local v1, scrollY:I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 460
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 463
    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollY:I
    :cond_0
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 468
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setFocusable(Z)V

    .line 240
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setDescendantFocusability(I)V

    .line 241
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setWillNotDraw(Z)V

    .line 242
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 243
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTouchSlop:I

    .line 244
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mMinimumVelocity:I

    .line 245
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mMaximumVelocity:I

    .line 246
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mOverscrollDistance:I

    .line 247
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mOverflingDistance:I

    .line 249
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwBounceController;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    .line 250
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwBounceController;->makeScroller()Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    .line 251
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController;->getBounceRunnable(I)Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    .line 253
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 476
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 478
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v0, 0x0

    .line 1257
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 1716
    if-ne p1, p2, :cond_1

    .line 1721
    :cond_0
    :goto_0
    return v1

    .line 1720
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1721
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .parameter "descendant"
    .parameter "delta"
    .parameter "height"

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1266
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1268
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 878
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 879
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 880
    .local v1, pointerId:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 884
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 885
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 886
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 887
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 888
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 891
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 884
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 485
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .parameter "direction"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 1168
    const/4 v3, 0x1

    .line 1170
    .local v3, handled:Z
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v4

    .line 1171
    .local v4, height:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v1

    .line 1172
    .local v1, containerTop:I
    add-int v0, v1, v4

    .line 1173
    .local v0, containerBottom:I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_2

    const/4 v6, 0x1

    .line 1175
    .local v6, up:Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1176
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 1177
    move-object v5, p0

    .line 1180
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 1181
    const/4 v3, 0x0

    .line 1187
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    .line 1188
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1190
    :cond_1
    return v3

    .line 1173
    .end local v5           #newFocused:Landroid/view/View;
    .end local v6           #up:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1183
    .restart local v5       #newFocused:Landroid/view/View;
    .restart local v6       #up:Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 1184
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->doScrollY(I)V

    goto :goto_1

    .line 1183
    .end local v2           #delta:I
    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1504
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1507
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1509
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1511
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1512
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollBy(II)V

    .line 1514
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1525
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1526
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1527
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1528
    if-eqz p2, :cond_2

    .line 1529
    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollBy(II)V

    .line 1534
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v2

    .line 1526
    goto :goto_0

    .line 1531
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 285
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 294
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 312
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x82

    const/4 v7, 0x0

    .line 1202
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1203
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 1204
    const/4 v0, 0x0

    .line 1206
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1208
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1210
    .local v3, maxJump:I
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1211
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1212
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1213
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1214
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->doScrollY(I)V

    .line 1215
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1237
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1244
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1245
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setDescendantFocusability(I)V

    .line 1246
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->requestFocus()Z

    .line 1247
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setDescendantFocusability(I)V

    .line 1249
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 1218
    .end local v6           #scrollDelta:I
    :cond_3
    move v6, v3

    .line 1220
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x21

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 1221
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v6

    .line 1231
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 1234
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->doScrollY(I)V

    goto :goto_0

    .line 1222
    :cond_5
    if-ne p1, v10, :cond_4

    .line 1223
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 1224
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1225
    .local v1, daBottom:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int v5, v8, v9

    .line 1226
    .local v5, screenBottom:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 1227
    sub-int v6, v1, v5

    goto :goto_1

    .line 1234
    .end local v1           #daBottom:I
    .end local v5           #screenBottom:I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method public computeScroll()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 1420
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1441
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    .line 1442
    .local v3, oldX:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    .line 1443
    .local v4, oldY:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrX()I

    move-result v12

    .line 1444
    .local v12, x:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrY()I

    move-result v13

    .line 1446
    .local v13, y:I
    if-ne v3, v12, :cond_0

    if-eq v4, v13, :cond_2

    .line 1447
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v6

    .line 1448
    .local v6, range:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getOverScrollMode()I

    move-result v11

    .line 1449
    .local v11, overscrollMode:I
    if-eqz v11, :cond_1

    if-ne v11, v10, :cond_4

    if-lez v6, :cond_4

    .line 1452
    .local v10, canOverscroll:Z
    :cond_1
    :goto_0
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v7, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/touchwiz/widget/TwScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1453
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->onScrollChanged(IIII)V

    .line 1455
    if-eqz v10, :cond_2

    .line 1456
    if-gez v13, :cond_5

    if-ltz v4, :cond_5

    .line 1457
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    .line 1486
    .end local v6           #range:I
    .end local v10           #canOverscroll:Z
    .end local v11           #overscrollMode:I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->awakenScrollBars()Z

    .line 1489
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->postInvalidate()V

    .line 1496
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_3
    :goto_2
    return-void

    .restart local v3       #oldX:I
    .restart local v4       #oldY:I
    .restart local v6       #range:I
    .restart local v11       #overscrollMode:I
    .restart local v12       #x:I
    .restart local v13       #y:I
    :cond_4
    move v10, v5

    .line 1449
    goto :goto_0

    .line 1458
    .restart local v10       #canOverscroll:Z
    :cond_5
    if-le v13, v6, :cond_2

    if-gt v4, v6, :cond_2

    .line 1459
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 1491
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v6           #range:I
    .end local v10           #canOverscroll:Z
    .end local v11           #overscrollMode:I
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_6
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_3

    .line 1492
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_2
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 1546
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    .line 1603
    :cond_0
    :goto_0
    return v6

    .line 1549
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    .line 1550
    .local v3, height:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v5

    .line 1551
    .local v5, screenTop:I
    add-int v4, v5, v3

    .line 1553
    .local v4, screenBottom:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1556
    .local v2, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_2

    .line 1557
    add-int/2addr v5, v2

    .line 1562
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1563
    sub-int/2addr v4, v2

    .line 1566
    :cond_3
    const/4 v6, 0x0

    .line 1568
    .local v6, scrollYDelta:I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_5

    .line 1573
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_4

    .line 1575
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 1582
    :goto_1
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1583
    .local v0, bottom:I
    sub-int v1, v0, v4

    .line 1584
    .local v1, distanceToBottom:I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1586
    goto :goto_0

    .line 1578
    .end local v0           #bottom:I
    .end local v1           #distanceToBottom:I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_1

    .line 1586
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_0

    .line 1591
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 1593
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1601
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 1596
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_2
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1358
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    .line 1368
    .local v0, extent:I
    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 3

    .prologue
    .line 1374
    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1376
    .local v0, offset:I
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v1, :cond_0

    .line 1387
    :cond_0
    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1339
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v1

    .line 1340
    .local v1, count:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int v0, v5, v6

    .line 1341
    .local v0, contentHeight:I
    if-nez v1, :cond_0

    .line 1354
    .end local v0           #contentHeight:I
    :goto_0
    return v0

    .line 1345
    .restart local v0       #contentHeight:I
    :cond_0
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1346
    .local v3, scrollRange:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    .line 1347
    .local v4, scrollY:I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1348
    .local v2, overscrollBottom:I
    if-gez v4, :cond_2

    .line 1349
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    .line 1354
    goto :goto_0

    .line 1350
    :cond_2
    if-le v4, v2, :cond_1

    .line 1351
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 403
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 1806
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1822
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v4, :cond_3

    .line 1823
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    .line 1824
    .local v2, scrollY:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1825
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1826
    .local v1, restoreCount:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 1833
    .local v3, width:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1835
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 1836
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4, p1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1837
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    .line 1839
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1841
    .end local v1           #restoreCount:I
    .end local v3           #width:I
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1842
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1843
    .restart local v1       #restoreCount:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 1844
    .restart local v3       #width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v0

    .line 1853
    .local v0, height:I
    neg-int v4, v3

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1856
    const/high16 v4, 0x4334

    int-to-float v5, v3

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1857
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4, v3, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 1858
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4, p1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1859
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    .line 1861
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1864
    .end local v0           #height:I
    .end local v1           #restoreCount:I
    .end local v2           #scrollY:I
    .end local v3           #width:I
    :cond_3
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 415
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 417
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 418
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    .line 419
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 420
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 421
    const/4 v0, 0x0

    .line 422
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 424
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 453
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 430
    :cond_2
    const/4 v1, 0x0

    .line 431
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 432
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 453
    goto :goto_0

    .line 434
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 435
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 437
    :cond_4
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->fullScroll(I)Z

    move-result v1

    .line 439
    goto :goto_1

    .line 441
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 442
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 444
    :cond_5
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->fullScroll(I)Z

    move-result v1

    .line 446
    goto :goto_1

    .line 448
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    .line 432
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 14
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    .line 1732
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1733
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int v12, v0, v1

    .line 1734
    .local v12, height:I
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 1736
    .local v11, bottom:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    sub-int v4, v11, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v12, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIIIII)V

    .line 1739
    if-lez p1, :cond_2

    const/4 v13, 0x1

    .line 1741
    .local v13, movingDown:Z
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_0

    .line 1742
    const-string v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1745
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    .line 1747
    .end local v11           #bottom:I
    .end local v12           #height:I
    .end local v13           #movingDown:Z
    :cond_1
    return-void

    .restart local v11       #bottom:I
    .restart local v12       #height:I
    :cond_2
    move v13, v3

    .line 1739
    goto :goto_0
.end method

.method public fullScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1135
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1136
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v2

    .line 1138
    .local v2, height:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 1139
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1141
    if-eqz v1, :cond_0

    .line 1142
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    .line 1143
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1144
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1145
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1146
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1150
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 1135
    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 217
    const/4 v3, 0x0

    .line 227
    :goto_0
    return v3

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 221
    .local v1, length:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 222
    .local v0, bottomEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 223
    .local v2, span:I
    if-ge v2, v1, :cond_1

    .line 224
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 227
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public getBounce()Z
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 235
    const/high16 v0, 0x3f00

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBottom:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 203
    const/4 v1, 0x0

    .line 211
    :goto_0
    return v1

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 207
    .local v0, length:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 208
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 211
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1392
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1397
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1400
    .local v1, childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1402
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1403
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 1408
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1410
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1412
    .local v1, childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1415
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1416
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1666
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1668
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_0

    .line 1669
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1670
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1672
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 1673
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1674
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1676
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 895
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 896
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 919
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_0
    return v5

    .line 898
    :pswitch_0
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 899
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 900
    .local v4, vscroll:F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    .line 901
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getVerticalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 902
    .local v0, delta:I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v3

    .line 903
    .local v3, range:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    .line 904
    .local v2, oldScrollY:I
    sub-int v1, v2, v0

    .line 905
    .local v1, newScrollY:I
    if-gez v1, :cond_2

    .line 906
    const/4 v1, 0x0

    .line 910
    :cond_1
    :goto_1
    if-eq v1, v2, :cond_0

    .line 911
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 912
    const/4 v5, 0x1

    goto :goto_0

    .line 907
    :cond_2
    if-le v1, v3, :cond_1

    .line 908
    move v1, v3

    goto :goto_1

    .line 896
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlowRecedeAnimationStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1891
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    .line 1893
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1894
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1897
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 946
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 947
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 948
    .local v0, scrollable:Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 949
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 950
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 951
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 952
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 953
    return-void

    .line 947
    .end local v0           #scrollable:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 940
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 941
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 942
    return-void

    .line 941
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 507
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 508
    .local v7, action:I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 600
    :cond_0
    :goto_0
    return v0

    .line 512
    :cond_1
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 600
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 524
    :pswitch_1
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 525
    .local v8, activePointerId:I
    if-eq v8, v2, :cond_2

    .line 531
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 535
    .local v9, pointerIndex:I
    if-ltz v9, :cond_0

    .line 538
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 539
    .local v10, y:F
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    sub-float v1, v10, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v11, v1

    .line 540
    .local v11, yDiff:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTouchSlop:I

    if-le v11, v1, :cond_2

    .line 541
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 542
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 543
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initVelocityTrackerIfNotExists()V

    .line 544
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 545
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_2

    .line 546
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_1

    .line 553
    .end local v8           #activePointerId:I
    .end local v9           #pointerIndex:I
    .end local v10           #y:F
    .end local v11           #yDiff:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 554
    .restart local v10       #y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    float-to-int v2, v10

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 555
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 556
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->recycleVelocityTracker()V

    goto :goto_1

    .line 564
    :cond_3
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 565
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 567
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initOrResetVelocityTracker()V

    .line 568
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 574
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4

    move v3, v0

    :cond_4
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 575
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_2

    .line 576
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_1

    .line 584
    .end local v10           #y:F
    :pswitch_3
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 585
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 586
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->recycleVelocityTracker()V

    .line 587
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    goto/16 :goto_1

    .line 592
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 512
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1680
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1681
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsLayoutDirty:Z

    .line 1683
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1686
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1689
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollTo(II)V

    .line 1690
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 371
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 373
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 378
    .local v4, heightMode:I
    if-eqz v4, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 383
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 384
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getMeasuredHeight()I

    move-result v3

    .line 385
    .local v3, height:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_0

    .line 386
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 388
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v6, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 390
    .local v2, childWidthMeasureSpec:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int/2addr v3, v6

    .line 391
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v6

    .line 392
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 395
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 7
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v3, 0x0

    .line 925
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 926
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    .line 927
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    .line 928
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidateParentIfNeeded()V

    .line 929
    if-eqz p4, :cond_0

    .line 930
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    .line 935
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->awakenScrollBars()Z

    .line 936
    return-void

    .line 933
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 1629
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1630
    const/16 p1, 0x82

    .line 1635
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1639
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1647
    :cond_1
    :goto_2
    return v1

    .line 1631
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1632
    const/16 p1, 0x21

    goto :goto_0

    .line 1635
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1643
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1647
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1694
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1696
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1697
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1709
    :cond_0
    :goto_0
    return-void

    .line 1703
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1704
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1705
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1706
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1707
    .local v1, scrollDelta:I
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .parameter "ev"

    .prologue
    .line 611
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initVelocityTrackerIfNotExists()V

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 614
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    .line 616
    .local v17, action:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    move/from16 v0, v17

    if-ne v0, v3, :cond_1

    .line 621
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    .line 622
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 623
    const/4 v3, 0x1

    .line 874
    :goto_0
    return v3

    .line 626
    :cond_1
    move/from16 v0, v17

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    .line 874
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    .line 628
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 629
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-nez v3, :cond_4

    .line 630
    const/4 v3, 0x0

    goto :goto_0

    .line 628
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 637
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v3, :cond_5

    .line 640
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v3}, Landroid/os/StrictMode$Span;->finish()V

    .line 641
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 646
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 647
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    goto :goto_1

    .line 665
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    .line 667
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v18

    .line 669
    .local v18, activePointerIndex:I
    if-gez v18, :cond_6

    .line 670
    const/4 v3, 0x1

    goto :goto_0

    .line 772
    :cond_6
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    .line 773
    .local v27, y:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    sub-float v3, v3, v27

    float-to-int v5, v3

    .line 774
    .local v5, deltaY:I
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 776
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    move/from16 v22, v0

    .line 777
    .local v22, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    move/from16 v23, v0

    .line 778
    .local v23, oldY:I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v9

    .line 779
    .local v9, range:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getOverScrollMode()I

    move-result v24

    .line 780
    .local v24, overscrollMode:I
    if-eqz v24, :cond_7

    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_b

    if-lez v9, :cond_b

    :cond_7
    const/16 v19, 0x1

    .line 783
    .local v19, canOverscroll:Z
    :goto_3
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mOverscrollDistance:I

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/sec/android/touchwiz/widget/TwScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 788
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->onScrollChanged(IIII)V

    .line 790
    if-eqz v19, :cond_2

    .line 791
    add-int v25, v23, v5

    .line 792
    .local v25, pulledToY:I
    if-gez v25, :cond_c

    .line 793
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 794
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_9

    .line 795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 803
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 805
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    goto/16 :goto_1

    .line 780
    .end local v19           #canOverscroll:Z
    .end local v25           #pulledToY:I
    :cond_b
    const/16 v19, 0x0

    goto :goto_3

    .line 797
    .restart local v19       #canOverscroll:Z
    .restart local v25       #pulledToY:I
    :cond_c
    move/from16 v0, v25

    if-le v0, v9, :cond_9

    .line 798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 799
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_9

    .line 800
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_4

    .line 812
    .end local v5           #deltaY:I
    .end local v9           #range:I
    .end local v18           #activePointerIndex:I
    .end local v19           #canOverscroll:Z
    .end local v22           #oldX:I
    .end local v23           #oldY:I
    .end local v24           #overscrollMode:I
    .end local v25           #pulledToY:I
    .end local v27           #y:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v26, v0

    .line 816
    .local v26, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v21, 0x0

    .line 817
    .local v21, initialVelocity:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getVelocityPolynomialType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    .line 819
    sget-boolean v3, Lcom/sec/android/touchwiz/widget/TwScrollView;->DEBUG_VELOCITY_TRACKER_TRACE:Z

    if-eqz v3, :cond_d

    .line 820
    const-string v3, "TwScrollView"

    const-string v4, "SEC Velocity! Monomial Type"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_d
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mMaximumVelocity:I

    int-to-float v4, v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeMonomialCurrentVelocity(IF)V

    .line 824
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getMonomialYVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v21, v0

    .line 839
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_e

    .line 840
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mMinimumVelocity:I

    if-le v3, v4, :cond_10

    .line 841
    move/from16 v0, v21

    neg-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->fling(I)V

    .line 849
    :cond_e
    :goto_6
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 850
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->endDrag()V

    goto/16 :goto_1

    .line 827
    :cond_f
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mMaximumVelocity:I

    int-to-float v4, v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 828
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v21, v0

    goto :goto_5

    .line 843
    :cond_10
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v16

    invoke-virtual/range {v10 .. v16}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    goto :goto_6

    .line 854
    .end local v21           #initialVelocity:I
    .end local v26           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 855
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v16

    invoke-virtual/range {v10 .. v16}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 856
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    .line 858
    :cond_11
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 859
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->endDrag()V

    goto/16 :goto_1

    .line 863
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v20

    .line 864
    .local v20, index:I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    .line 865
    .restart local v27       #y:F
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 866
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    goto/16 :goto_1

    .line 870
    .end local v20           #index:I
    .end local v27           #y:F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 871
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    goto/16 :goto_1

    .line 626
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1098
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1099
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v2

    .line 1101
    .local v2, height:I
    if-eqz v1, :cond_2

    .line 1102
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1103
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    .line 1104
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1105
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1106
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1107
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1116
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1118
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 1098
    goto :goto_0

    .line 1111
    .restart local v1       #down:Z
    .restart local v2       #height:I
    :cond_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1112
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    .line 1113
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1608
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1609
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1615
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1616
    return-void

    .line 1613
    :cond_0
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1653
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1655
    invoke-direct {p0, p2, p3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 489
    if-eqz p1, :cond_0

    .line 490
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->recycleVelocityTracker()V

    .line 492
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 493
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1660
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsLayoutDirty:Z

    .line 1661
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1662
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1773
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1774
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1775
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->clamp(III)I

    move-result p1

    .line 1776
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->clamp(III)I

    move-result p2

    .line 1777
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1778
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1781
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setEnableBounce(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setEnableBounce(Z)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setEdgeEffects(Lcom/sec/android/touchwiz/widget/TwEdgeEffect;Lcom/sec/android/touchwiz/widget/TwEdgeEffect;)V

    .line 276
    :cond_0
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 347
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFillViewport:Z

    .line 348
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->requestLayout()V

    .line 350
    :cond_0
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 608
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 1785
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1786
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-nez v1, :cond_0

    .line 1787
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1788
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1789
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setGlowRecedeAnimationTrigger(Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;)V

    .line 1790
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1791
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setGlowRecedeAnimationTrigger(Lcom/sec/android/touchwiz/widget/TwEdgeEffect$GlowRecedeAnimationTrigger;)V

    .line 1794
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setEnableBounce(Z)V

    .line 1801
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 1802
    return-void

    .line 1796
    :cond_1
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1797
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1799
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setEnableBounce(Z)V

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 366
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    .line 367
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v10, 0x0

    .line 1294
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1319
    :goto_0
    return-void

    .line 1298
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastScroll:J

    sub-long v1, v6, v8

    .line 1299
    .local v1, duration:J
    const-wide/16 v6, 0xfa

    cmp-long v6, v1, v6

    if-lez v6, :cond_1

    .line 1300
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int v3, v6, v7

    .line 1301
    .local v3, height:I
    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1302
    .local v0, bottom:I
    sub-int v6, v0, v3

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1303
    .local v4, maxY:I
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    .line 1304
    .local v5, scrollY:I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 1306
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->startScroll(IIII)V

    .line 1307
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    .line 1318
    .end local v0           #bottom:I
    .end local v3           #height:I
    .end local v4           #maxY:I
    .end local v5           #scrollY:I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastScroll:J

    goto :goto_0

    .line 1309
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1310
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 1311
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v6, :cond_2

    .line 1312
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v6}, Landroid/os/StrictMode$Span;->finish()V

    .line 1313
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1316
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1328
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollBy(II)V

    .line 1329
    return-void
.end method
